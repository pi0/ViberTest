package com.viber.voip.api.billing;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

public class IabHelper
{
  public static final int BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE = 3;
  public static final int BILLING_RESPONSE_RESULT_DEVELOPER_ERROR = 5;
  public static final int BILLING_RESPONSE_RESULT_ERROR = 6;
  public static final int BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED = 7;
  public static final int BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED = 8;
  public static final int BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE = 4;
  public static final int BILLING_RESPONSE_RESULT_OK = 0;
  public static final int BILLING_RESPONSE_RESULT_USER_CANCELED = 1;
  public static final String GET_PRODUCT_DETAILS_ITEM_LIST = "ITEM_ID_LIST";
  public static final String GET_PRODUCT_DETAILS_ITEM_TYPE_LIST = "ITEM_TYPE_LIST";
  public static final int IABHELPER_BAD_RESPONSE = -1002;
  public static final int IABHELPER_ERROR_BASE = -1000;
  public static final int IABHELPER_INVALID_CONSUMPTION = -1010;
  public static final int IABHELPER_MISSING_TOKEN = -1007;
  public static final int IABHELPER_REMOTE_EXCEPTION = -1001;
  public static final int IABHELPER_SEND_INTENT_FAILED = -1004;
  public static final int IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE = -1009;
  public static final int IABHELPER_UNKNOWN_ERROR = -1008;
  public static final int IABHELPER_UNKNOWN_PURCHASE_RESPONSE = -1006;
  public static final int IABHELPER_USER_CANCELLED = -1005;
  public static final int IABHELPER_VERIFICATION_FAILED = -1003;
  public static final String INAPP_CONTINUATION_TOKEN = "INAPP_CONTINUATION_TOKEN";
  public static final String ITEM_TYPE_INAPP = "inapp";
  public static final String ITEM_TYPE_SUBS = "subs";
  private static final String LOG_TAG = IabHelper.class.getSimpleName();
  public static final String RESPONSE_BUY_INTENT = "BUY_INTENT";
  public static final String RESPONSE_CODE = "RESPONSE_CODE";
  public static final String RESPONSE_GET_PRODUCT_DETAILS_LIST = "DETAILS_LIST";
  public static final String RESPONSE_INAPP_ITEM_LIST = "INAPP_PURCHASE_ITEM_LIST";
  public static final String RESPONSE_INAPP_PURCHASE_DATA = "INAPP_PURCHASE_DATA";
  public static final String RESPONSE_INAPP_PURCHASE_DATA_LIST = "INAPP_PURCHASE_DATA_LIST";
  public static final String RESPONSE_INAPP_SIGNATURE = "INAPP_DATA_SIGNATURE";
  public static final String RESPONSE_INAPP_SIGNATURE_LIST = "INAPP_DATA_SIGNATURE_LIST";
  Context mContext;
  boolean mDebugLog = false;
  String mDebugTag = "IabHelper";
  ExecutorService mExecutor;
  ArrayList<Runnable> mPendingTasks;
  IabHelper.OnIabPurchaseFinishedListener mPurchaseListener;
  boolean mQueueBlocked;
  int mRequestCode;
  IInAppBillingService mService;
  ServiceConnection mServiceConn;
  boolean mSetupDone = false;
  boolean mSubscriptionsSupported = false;
  
  public IabHelper(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
    this.mExecutor = Executors.newSingleThreadExecutor();
    logDebug("IAB helper created.");
    this.mQueueBlocked = true;
    this.mPendingTasks = new ArrayList();
  }
  
  private void checkSetupDone(String paramString)
  {
    if (!this.mSetupDone)
    {
      logError("Illegal state for operation (" + paramString + "): IAB helper is not set up.");
      throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + paramString);
    }
  }
  
  private void consume(Purchase paramPurchase)
  {
    checkSetupDone("consume");
    if (!paramPurchase.mItemType.equals("inapp")) {
      throw new IabException(-1010, "Items of type '" + paramPurchase.mItemType + "' can't be consumed.");
    }
    String str1;
    String str2;
    try
    {
      str1 = paramPurchase.getToken();
      str2 = paramPurchase.getProductId();
      if ((str1 == null) || (str1.equals("")))
      {
        logError("Can't consume " + str2 + ". No token.");
        throw new IabException(-1007, "PurchaseInfo is missing token for productId: " + str2 + " " + paramPurchase);
      }
    }
    catch (RemoteException localRemoteException)
    {
      throw new IabException(-1001, "Remote exception while consuming. PurchaseInfo: " + paramPurchase, localRemoteException);
    }
    logDebug("Consuming productId: " + str2 + ", token: " + str1);
    int i = this.mService.consumePurchase(3, this.mContext.getPackageName(), str1);
    if (i == 0)
    {
      logDebug("Successfully consumed productId: " + str2);
      return;
    }
    logDebug("Error consuming consuming productId " + str2 + ". " + getResponseDesc(i));
    throw new IabException(i, "Error consuming productId " + str2);
  }
  
  private void consumeAsyncInternal(List<Purchase> paramList, IabHelper.OnConsumeFinishedListener paramOnConsumeFinishedListener, IabHelper.OnConsumeMultiFinishedListener paramOnConsumeMultiFinishedListener)
  {
    logDebug("consumeAsyncInternal");
    schedule(new IabHelper.4(this, paramList, paramOnConsumeFinishedListener, new Handler(), paramOnConsumeMultiFinishedListener));
  }
  
  private int getResponseCodeFromBundle(Bundle paramBundle)
  {
    Object localObject;
    try
    {
      localObject = paramBundle.get("RESPONSE_CODE");
      if (localObject == null)
      {
        logDebug("Bundle with null response code, assuming OK (known issue)");
        return 0;
      }
    }
    catch (Exception localException)
    {
      return 6;
    }
    if ((localObject instanceof Integer)) {
      return ((Integer)localObject).intValue();
    }
    if ((localObject instanceof Long)) {
      return (int)((Long)localObject).longValue();
    }
    logError("Unexpected type for bundle response code.");
    logError(localObject.getClass().getName());
    return 6;
  }
  
  private int getResponseCodeFromIntent(Intent paramIntent)
  {
    Object localObject = paramIntent.getExtras().get("RESPONSE_CODE");
    if (localObject == null)
    {
      logError("Intent with no response code, assuming OK (known issue)");
      return 0;
    }
    if ((localObject instanceof Integer)) {
      return ((Integer)localObject).intValue();
    }
    if ((localObject instanceof Long)) {
      return (int)((Long)localObject).longValue();
    }
    logError("Unexpected type for intent response code.");
    logError(localObject.getClass().getName());
    throw new RuntimeException("Unexpected type for intent response code: " + localObject.getClass().getName());
  }
  
  public static String getResponseDesc(int paramInt)
  {
    String[] arrayOfString1 = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
    String[] arrayOfString2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
    if (paramInt <= -1000)
    {
      int i = -1000 - paramInt;
      if ((i >= 0) && (i < arrayOfString2.length)) {
        return arrayOfString2[i];
      }
      return String.valueOf(paramInt) + ":Unknown IAB Helper Error";
    }
    if ((paramInt < 0) || (paramInt >= arrayOfString1.length)) {
      return String.valueOf(paramInt) + ":Unknown";
    }
    return arrayOfString1[paramInt];
  }
  
  private IabInventory queryInventory(boolean paramBoolean, List<String> paramList)
  {
    return queryInventory(paramBoolean, paramList, null);
  }
  
  private IabInventory queryInventory(boolean paramBoolean, List<String> paramList1, List<String> paramList2)
  {
    checkSetupDone("queryInventory");
    IabInventory localIabInventory;
    try
    {
      localIabInventory = new IabInventory();
      int i = queryPurchases(localIabInventory, "inapp");
      if (i != 0) {
        throw new IabException(i, "Error refreshing inventory (querying owned items).");
      }
    }
    catch (RemoteException localRemoteException)
    {
      throw new IabException(-1001, "Remote exception while refreshing inventory.", localRemoteException);
      if (paramBoolean)
      {
        int m = queryProductDetails("inapp", localIabInventory, paramList1);
        if (m != 0) {
          throw new IabException(m, "Error refreshing inventory (querying prices of items).");
        }
      }
    }
    catch (JSONException localJSONException)
    {
      throw new IabException(-1002, "Error parsing JSON response while refreshing inventory.", localJSONException);
    }
    if (this.mSubscriptionsSupported)
    {
      int j = queryPurchases(localIabInventory, "subs");
      if (j != 0) {
        throw new IabException(j, "Error refreshing inventory (querying owned subscriptions).");
      }
      if (paramBoolean)
      {
        int k = queryProductDetails("subs", localIabInventory, paramList2);
        if (k != 0) {
          throw new IabException(k, "Error refreshing inventory (querying prices of subscriptions).");
        }
      }
    }
    return localIabInventory;
  }
  
  private int queryProductDetails(String paramString, IabInventory paramIabInventory, List<String> paramList)
  {
    logDebug("Querying product details.");
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.addAll(paramIabInventory.getAllOwnedProductIds(paramString));
    if (paramList != null)
    {
      Iterator localIterator5 = paramList.iterator();
      while (localIterator5.hasNext())
      {
        String str = (String)localIterator5.next();
        if (!localArrayList1.contains(str)) {
          localArrayList1.add(str);
        }
      }
    }
    if (localArrayList1.size() == 0)
    {
      logDebug("queryPrices: nothing to do because there are no productIds.");
      return 0;
    }
    ArrayList localArrayList2 = new ArrayList();
    int i = localArrayList1.size() / 20;
    int j = localArrayList1.size() % 20;
    for (int k = 0; k < i; k++)
    {
      ArrayList localArrayList3 = new ArrayList();
      Iterator localIterator1 = localArrayList1.subList(k * 20, 20 + k * 20).iterator();
      while (localIterator1.hasNext()) {
        localArrayList3.add((String)localIterator1.next());
      }
      localArrayList2.add(localArrayList3);
    }
    if (j != 0)
    {
      ArrayList localArrayList4 = new ArrayList();
      Iterator localIterator2 = localArrayList1.subList(i * 20, j + i * 20).iterator();
      while (localIterator2.hasNext()) {
        localArrayList4.add((String)localIterator2.next());
      }
      localArrayList2.add(localArrayList4);
    }
    Iterator localIterator3 = localArrayList2.iterator();
    while (localIterator3.hasNext())
    {
      ArrayList localArrayList5 = (ArrayList)localIterator3.next();
      Bundle localBundle1 = new Bundle();
      localBundle1.putStringArrayList("ITEM_ID_LIST", localArrayList5);
      Bundle localBundle2 = this.mService.getSkuDetails(3, this.mContext.getPackageName(), paramString, localBundle1);
      if (!localBundle2.containsKey("DETAILS_LIST"))
      {
        int m = getResponseCodeFromBundle(localBundle2);
        if (m != 0)
        {
          logDebug("getProductDetails() failed: " + getResponseDesc(m));
          return m;
        }
        logError("getProductDetails() returned a bundle with neither an error nor a detail list.");
        return -1002;
      }
      Iterator localIterator4 = localBundle2.getStringArrayList("DETAILS_LIST").iterator();
      while (localIterator4.hasNext())
      {
        ProductDetails localProductDetails = new ProductDetails(paramString, (String)localIterator4.next());
        logDebug("Got product details: " + localProductDetails);
        paramIabInventory.addProductDetails(localProductDetails);
      }
    }
    return 0;
  }
  
  private int queryPurchases(IabInventory paramIabInventory, String paramString)
  {
    logDebug("Querying owned items, item type: " + paramString);
    logDebug("Package name: " + this.mContext.getPackageName());
    String str1 = null;
    do
    {
      logDebug("Calling getPurchases with continuation token: " + str1);
      Bundle localBundle = this.mService.getPurchases(3, this.mContext.getPackageName(), paramString, str1);
      int i = getResponseCodeFromBundle(localBundle);
      logDebug("Owned items response: " + String.valueOf(i));
      if (i != 0)
      {
        logDebug("getPurchases() failed: " + getResponseDesc(i));
        return i;
      }
      if ((!localBundle.containsKey("INAPP_PURCHASE_ITEM_LIST")) || (!localBundle.containsKey("INAPP_PURCHASE_DATA_LIST")) || (!localBundle.containsKey("INAPP_DATA_SIGNATURE_LIST")))
      {
        logError("Bundle returned from getPurchases() doesn't contain required fields.");
        return -1002;
      }
      ArrayList localArrayList1 = localBundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
      ArrayList localArrayList2 = localBundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
      ArrayList localArrayList3 = localBundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
      for (int j = 0; j < localArrayList2.size(); j++)
      {
        String str2 = (String)localArrayList2.get(j);
        String str3 = (String)localArrayList3.get(j);
        String str4 = (String)localArrayList1.get(j);
        logDebug("ProductId is owned: " + str4);
        Purchase localPurchase = new Purchase(str2, str3);
        if (TextUtils.isEmpty(localPurchase.getToken()))
        {
          logWarn("BUG: empty/null token!");
          logDebug("Purchase data: " + str2);
        }
        paramIabInventory.addPurchase(localPurchase);
      }
      str1 = localBundle.getString("INAPP_CONTINUATION_TOKEN");
      logDebug("Continuation token: " + str1);
    } while (!TextUtils.isEmpty(str1));
    return 0;
  }
  
  private void schedule(Runnable paramRunnable)
  {
    schedule(paramRunnable, false);
  }
  
  /* Error */
  private void schedule(Runnable paramRunnable, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 150	com/viber/voip/api/billing/IabHelper:mQueueBlocked	Z
    //   6: ifeq +43 -> 49
    //   9: iload_2
    //   10: ifne +39 -> 49
    //   13: aload_0
    //   14: new 182	java/lang/StringBuilder
    //   17: dup
    //   18: invokespecial 183	java/lang/StringBuilder:<init>	()V
    //   21: ldc_w 511
    //   24: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: aload_1
    //   28: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 194	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: invokevirtual 148	com/viber/voip/api/billing/IabHelper:logDebug	(Ljava/lang/String;)V
    //   37: aload_0
    //   38: getfield 155	com/viber/voip/api/billing/IabHelper:mPendingTasks	Ljava/util/ArrayList;
    //   41: aload_1
    //   42: invokevirtual 420	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   45: pop
    //   46: aload_0
    //   47: monitorexit
    //   48: return
    //   49: aload_0
    //   50: new 182	java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial 183	java/lang/StringBuilder:<init>	()V
    //   57: ldc_w 513
    //   60: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: aload_1
    //   64: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   67: invokevirtual 194	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokevirtual 148	com/viber/voip/api/billing/IabHelper:logDebug	(Ljava/lang/String;)V
    //   73: aload_0
    //   74: getfield 142	com/viber/voip/api/billing/IabHelper:mExecutor	Ljava/util/concurrent/ExecutorService;
    //   77: aload_1
    //   78: invokeinterface 518 2 0
    //   83: goto -37 -> 46
    //   86: astore_3
    //   87: aload_0
    //   88: monitorexit
    //   89: aload_3
    //   90: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	this	IabHelper
    //   0	91	1	paramRunnable	Runnable
    //   0	91	2	paramBoolean	boolean
    //   86	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	9	86	finally
    //   13	46	86	finally
    //   49	83	86	finally
  }
  
  private void setQueueBlocked(boolean paramBoolean)
  {
    try
    {
      this.mQueueBlocked = paramBoolean;
      if (!this.mQueueBlocked)
      {
        Iterator localIterator = this.mPendingTasks.iterator();
        while (localIterator.hasNext())
        {
          Runnable localRunnable = (Runnable)localIterator.next();
          this.mExecutor.execute(localRunnable);
        }
        this.mPendingTasks.clear();
      }
    }
    finally {}
  }
  
  public void consumeAsync(Purchase paramPurchase, IabHelper.OnConsumeFinishedListener paramOnConsumeFinishedListener)
  {
    checkSetupDone("consume");
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramPurchase);
    consumeAsyncInternal(localArrayList, paramOnConsumeFinishedListener, null);
  }
  
  public void consumeAsync(List<Purchase> paramList, IabHelper.OnConsumeMultiFinishedListener paramOnConsumeMultiFinishedListener)
  {
    checkSetupDone("consume");
    consumeAsyncInternal(paramList, null, paramOnConsumeMultiFinishedListener);
  }
  
  public void dispose()
  {
    logDebug("Disposing.");
    this.mSetupDone = false;
    if (this.mServiceConn != null)
    {
      logDebug("Unbinding from service.");
      if ((this.mContext != null) && (this.mService != null)) {
        this.mContext.unbindService(this.mServiceConn);
      }
      this.mServiceConn = null;
      this.mService = null;
      this.mPurchaseListener = null;
    }
    if (this.mExecutor != null)
    {
      this.mExecutor.shutdown();
      this.mExecutor = null;
    }
  }
  
  public void enableDebugLogging(boolean paramBoolean)
  {
    this.mDebugLog = paramBoolean;
  }
  
  public void enableDebugLogging(boolean paramBoolean, String paramString)
  {
    this.mDebugLog = paramBoolean;
    this.mDebugTag = paramString;
  }
  
  public boolean handleActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 != this.mRequestCode) {
      return false;
    }
    checkSetupDone("handleActivityResult");
    setQueueBlocked(false);
    if (paramIntent == null)
    {
      logError("Null data in IAB activity result.");
      IabResult localIabResult6 = new IabResult(-1002, "Null data in IAB result");
      if (this.mPurchaseListener != null) {
        this.mPurchaseListener.onIabPurchaseFinished(localIabResult6, null);
      }
      return true;
    }
    int i = getResponseCodeFromIntent(paramIntent);
    String str1 = paramIntent.getStringExtra("INAPP_PURCHASE_DATA");
    String str2 = paramIntent.getStringExtra("INAPP_DATA_SIGNATURE");
    if ((paramInt2 == -1) && (i == 0))
    {
      logDebug("Successful resultcode from purchase activity.");
      logDebug("Purchase data: " + str1);
      logDebug("Data signature: " + str2);
      logDebug("Extras: " + paramIntent.getExtras());
      if ((str1 == null) || (str2 == null))
      {
        logError("BUG: either purchaseData or dataSignature is null.");
        logDebug("Extras: " + paramIntent.getExtras().toString());
        IabResult localIabResult4 = new IabResult(-1008, "IAB returned null purchaseData or dataSignature");
        if (this.mPurchaseListener != null) {
          this.mPurchaseListener.onIabPurchaseFinished(localIabResult4, null);
        }
        return true;
      }
    }
    for (;;)
    {
      try
      {
        Purchase localPurchase = new Purchase(str1, str2);
        if (this.mPurchaseListener != null) {
          this.mPurchaseListener.onIabPurchaseFinished(new IabResult(0, "Success"), localPurchase);
        }
        return true;
      }
      catch (JSONException localJSONException)
      {
        logError("Failed to parse purchase data.");
        localJSONException.printStackTrace();
        IabResult localIabResult5 = new IabResult(-1002, "Failed to parse purchase data.");
        if (this.mPurchaseListener != null) {
          this.mPurchaseListener.onIabPurchaseFinished(localIabResult5, null);
        }
        return true;
      }
      if (paramInt2 == -1)
      {
        logDebug("Result code was OK but in-app billing response was not OK: " + getResponseDesc(i));
        if (this.mPurchaseListener != null)
        {
          IabResult localIabResult3 = new IabResult(i, "Problem purchashing item.");
          this.mPurchaseListener.onIabPurchaseFinished(localIabResult3, null);
        }
      }
      else if (paramInt2 == 0)
      {
        logDebug("Purchase canceled - Response: " + getResponseDesc(i));
        IabResult localIabResult2 = new IabResult(-1005, "User canceled.");
        if (this.mPurchaseListener != null) {
          this.mPurchaseListener.onIabPurchaseFinished(localIabResult2, null);
        }
      }
      else
      {
        logError("Purchase failed. Result code: " + Integer.toString(paramInt2) + ". Response: " + getResponseDesc(i));
        IabResult localIabResult1 = new IabResult(-1006, "Unknown purchase response.");
        if (this.mPurchaseListener != null) {
          this.mPurchaseListener.onIabPurchaseFinished(localIabResult1, null);
        }
      }
    }
  }
  
  public void launchPurchaseFlow(Activity paramActivity, String paramString, int paramInt, IabHelper.OnIabPurchaseFinishedListener paramOnIabPurchaseFinishedListener)
  {
    launchPurchaseFlow(paramActivity, paramString, paramInt, paramOnIabPurchaseFinishedListener, "");
  }
  
  public void launchPurchaseFlow(Activity paramActivity, String paramString1, int paramInt, IabHelper.OnIabPurchaseFinishedListener paramOnIabPurchaseFinishedListener, String paramString2)
  {
    launchPurchaseFlow(paramActivity, paramString1, "inapp", paramInt, paramOnIabPurchaseFinishedListener, paramString2);
  }
  
  public void launchPurchaseFlow(Activity paramActivity, String paramString1, String paramString2, int paramInt, IabHelper.OnIabPurchaseFinishedListener paramOnIabPurchaseFinishedListener, String paramString3)
  {
    checkSetupDone("launchPurchaseFlow");
    if ((paramString2.equals("subs")) && (!this.mSubscriptionsSupported))
    {
      IabResult localIabResult = new IabResult(-1009, "Subscriptions are not available.");
      if (paramOnIabPurchaseFinishedListener != null) {
        paramOnIabPurchaseFinishedListener.onIabPurchaseFinished(localIabResult, null);
      }
      return;
    }
    setQueueBlocked(true);
    schedule(new IabHelper.2(this, paramString1, paramString2, paramString3, paramOnIabPurchaseFinishedListener, paramInt, paramActivity), true);
  }
  
  public void launchSubscriptionPurchaseFlow(Activity paramActivity, String paramString, int paramInt, IabHelper.OnIabPurchaseFinishedListener paramOnIabPurchaseFinishedListener)
  {
    launchSubscriptionPurchaseFlow(paramActivity, paramString, paramInt, paramOnIabPurchaseFinishedListener, "");
  }
  
  public void launchSubscriptionPurchaseFlow(Activity paramActivity, String paramString1, int paramInt, IabHelper.OnIabPurchaseFinishedListener paramOnIabPurchaseFinishedListener, String paramString2)
  {
    launchPurchaseFlow(paramActivity, paramString1, "subs", paramInt, paramOnIabPurchaseFinishedListener, paramString2);
  }
  
  void logDebug(String paramString) {}
  
  void logError(String paramString) {}
  
  void logWarn(String paramString) {}
  
  public void queryInventoryAsync(IabHelper.QueryInventoryFinishedListener paramQueryInventoryFinishedListener)
  {
    queryInventoryAsync(true, null, paramQueryInventoryFinishedListener);
  }
  
  public void queryInventoryAsync(boolean paramBoolean, IabHelper.QueryInventoryFinishedListener paramQueryInventoryFinishedListener)
  {
    queryInventoryAsync(paramBoolean, null, paramQueryInventoryFinishedListener);
  }
  
  public void queryInventoryAsync(boolean paramBoolean, List<String> paramList, IabHelper.QueryInventoryFinishedListener paramQueryInventoryFinishedListener)
  {
    schedule(new IabHelper.3(this, paramBoolean, paramList, new Handler(), paramQueryInventoryFinishedListener));
  }
  
  public void startSetup(IabHelper.OnIabSetupFinishedListener paramOnIabSetupFinishedListener)
  {
    if (this.mSetupDone) {
      throw new IllegalStateException("IAB helper is already set up.");
    }
    logDebug("Starting in-app billing setup.");
    this.mServiceConn = new IabHelper.1(this, paramOnIabSetupFinishedListener);
    Intent localIntent = new Intent("com.viber.voip.api.billing.InAppBillingService.BIND");
    if (!this.mContext.getPackageManager().queryIntentServices(localIntent, 0).isEmpty()) {
      this.mContext.bindService(localIntent, this.mServiceConn, 1);
    }
    while (paramOnIabSetupFinishedListener == null) {
      return;
    }
    paramOnIabSetupFinishedListener.onIabSetupFinished(new IabResult(3, "Billing service unavailable on device."));
  }
  
  public boolean subscriptionsSupported()
  {
    return this.mSubscriptionsSupported;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.IabHelper
 * JD-Core Version:    0.7.0.1
 */