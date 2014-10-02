package com.viber.voip.billing;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

public class ap
{
  static br m = new br();
  private static final String t = ap.class.getSimpleName();
  boolean a = false;
  String b = "IabHelper";
  boolean c = false;
  boolean d = false;
  Context e;
  com.android.b.a.a f;
  ServiceConnection g;
  int h;
  ExecutorService i;
  ArrayList<bl> j;
  boolean k;
  boolean l = false;
  bh n;
  private be o;
  private Handler p = dc.a(dk.a);
  private bo q;
  private Runnable r;
  private Runnable s = new ba(this);
  
  public ap(Context paramContext)
  {
    this.e = paramContext.getApplicationContext();
    this.i = Executors.newSingleThreadExecutor();
    a("IAB helper created.");
    this.k = true;
    this.j = new ArrayList();
  }
  
  private int a(Intent paramIntent)
  {
    Object localObject = paramIntent.getExtras().get("RESPONSE_CODE");
    if (localObject == null)
    {
      b("Intent with no response code, assuming OK (known issue)");
      return 0;
    }
    if ((localObject instanceof Integer)) {
      return ((Integer)localObject).intValue();
    }
    if ((localObject instanceof Long)) {
      return (int)((Long)localObject).longValue();
    }
    b("Unexpected type for intent response code.");
    b(localObject.getClass().getName());
    throw new RuntimeException("Unexpected type for intent response code: " + localObject.getClass().getName());
  }
  
  private int a(Bundle paramBundle)
  {
    Object localObject = paramBundle.get("RESPONSE_CODE");
    if (localObject == null)
    {
      a("Bundle with null response code, assuming OK (known issue)");
      return 0;
    }
    if ((localObject instanceof Integer)) {
      return ((Integer)localObject).intValue();
    }
    if ((localObject instanceof Long)) {
      return (int)((Long)localObject).longValue();
    }
    b("Unexpected type for bundle response code.");
    b(localObject.getClass().getName());
    throw new RuntimeException("Unexpected type for bundle response code: " + localObject.getClass().getName());
  }
  
  private int a(bm parambm, String paramString)
  {
    a("Querying owned items, item type: " + paramString);
    a("Package name: " + this.e.getPackageName());
    String str1 = null;
    com.android.b.a.a locala = d();
    do
    {
      a("Calling getPurchases with continuation token: " + str1);
      Bundle localBundle = locala.a(3, this.e.getPackageName(), paramString, str1);
      int i1 = a(localBundle);
      a("Owned items response: " + String.valueOf(i1));
      if (i1 != 0)
      {
        a("getPurchases() failed: " + a(i1));
        return i1;
      }
      if ((!localBundle.containsKey("INAPP_PURCHASE_ITEM_LIST")) || (!localBundle.containsKey("INAPP_PURCHASE_DATA_LIST")) || (!localBundle.containsKey("INAPP_DATA_SIGNATURE_LIST")))
      {
        b("Bundle returned from getPurchases() doesn't contain required fields.");
        return -1002;
      }
      ArrayList localArrayList1 = localBundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
      ArrayList localArrayList2 = localBundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
      ArrayList localArrayList3 = localBundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
      for (int i2 = 0; i2 < localArrayList2.size(); i2++)
      {
        String str2 = (String)localArrayList2.get(i2);
        String str3 = (String)localArrayList3.get(i2);
        String str4 = (String)localArrayList1.get(i2);
        a("ProductId is owned: " + str4);
        bu localbu = new bu(str2, str3);
        if (TextUtils.isEmpty(localbu.h()))
        {
          c("BUG: empty/null token!");
          a("Purchase data: " + str2);
        }
        parambm.a(localbu);
      }
      str1 = localBundle.getString("INAPP_CONTINUATION_TOKEN");
      a("Continuation token: " + str1);
    } while (!TextUtils.isEmpty(str1));
    return 0;
  }
  
  private int a(String paramString, bm parambm, List<bn> paramList)
  {
    a("queryProductDetails");
    com.android.b.a.a locala = d();
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = parambm.a().iterator();
    while (localIterator1.hasNext())
    {
      bn localbn2 = (bn)localIterator1.next();
      bq localbq3 = m.a(localbn2);
      if (localbq3 != null)
      {
        a("queryProductDetails, owned product, cached details: " + localbn2);
        parambm.a(localbq3);
      }
      else
      {
        a("queryProductDetails, owned product, will query: " + localbn2);
        localArrayList1.add(localbn2.toString());
      }
    }
    if (paramList != null)
    {
      Iterator localIterator5 = paramList.iterator();
      while (localIterator5.hasNext())
      {
        bn localbn1 = (bn)localIterator5.next();
        bq localbq2 = m.a(localbn1);
        if (localbq2 != null)
        {
          a("queryProductDetails, more products, cached details: " + localbn1);
          parambm.a(localbq2);
        }
        else
        {
          a("queryProductDetails, more products, will query: " + localbn1);
          localArrayList1.add(localbn1.toString());
        }
      }
    }
    if (localArrayList1.size() == 0) {
      a("queryProductDetails: nothing to query.");
    }
    for (;;)
    {
      return 0;
      ArrayList localArrayList2 = a(localArrayList1);
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator2 = localArrayList2.iterator();
      int i2;
      for (int i1 = 0; localIterator2.hasNext(); i1 = i2)
      {
        ArrayList localArrayList3 = (ArrayList)localIterator2.next();
        i2 = i1 + 1;
        localStringBuilder.setLength(0);
        Iterator localIterator3 = localArrayList3.iterator();
        while (localIterator3.hasNext()) {
          localStringBuilder.append((String)localIterator3.next()).append(" ");
        }
        a("queryProductDetails, batch #" + i2 + ", querying ids " + localStringBuilder.toString());
        Bundle localBundle1 = new Bundle();
        localBundle1.putStringArrayList("ITEM_ID_LIST", localArrayList3);
        Bundle localBundle2 = locala.a(3, this.e.getPackageName(), paramString, localBundle1);
        if (!localBundle2.containsKey("DETAILS_LIST"))
        {
          int i3 = a(localBundle2);
          if (i3 != 0)
          {
            a("getProductDetails() failed: " + a(i3));
            return i3;
          }
          b("getProductDetails() returned a bundle with neither an error nor a detail list.");
          return -1002;
        }
        Iterator localIterator4 = localBundle2.getStringArrayList("DETAILS_LIST").iterator();
        while (localIterator4.hasNext())
        {
          bq localbq1 = new bq(paramString, (String)localIterator4.next());
          a("Got productId details: " + localbq1);
          parambm.a(localbq1);
          m.a(localbq1);
        }
      }
    }
  }
  
  private bm a(boolean paramBoolean, List<bn> paramList)
  {
    return a(paramBoolean, paramList, null);
  }
  
  private bm a(boolean paramBoolean, List<bn> paramList1, List<bn> paramList2)
  {
    d("queryInventory");
    bm localbm;
    try
    {
      localbm = new bm();
      int i1 = a(localbm, "inapp");
      if (i1 != 0) {
        throw new ao(i1, "Error refreshing inventory (querying owned items).");
      }
    }
    catch (RemoteException localRemoteException)
    {
      throw new ao(-1001, "Remote exception while refreshing inventory.", localRemoteException);
      if (paramBoolean)
      {
        int i4 = a("inapp", localbm, paramList1);
        if (i4 != 0) {
          throw new ao(i4, "Error refreshing inventory (querying prices of items).");
        }
      }
    }
    catch (JSONException localJSONException)
    {
      throw new ao(-1002, "Error parsing JSON response while refreshing inventory.", localJSONException);
      if (!this.d) {
        break label203;
      }
      int i2 = a(localbm, "subs");
      if (i2 != 0) {
        throw new ao(i2, "Error refreshing inventory (querying owned subscriptions).");
      }
    }
    catch (Exception localException)
    {
      throw new ao(-1008, "Unexpected exception", localException);
    }
    if (paramBoolean)
    {
      int i3 = a("subs", localbm, paramList2);
      if (i3 != 0) {
        throw new ao(i3, "Error refreshing inventory (querying prices of subscriptions).");
      }
    }
    label203:
    return localbm;
  }
  
  public static String a(int paramInt)
  {
    String[] arrayOfString1 = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
    String[] arrayOfString2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
    if (paramInt <= -1000)
    {
      int i1 = -1000 - paramInt;
      if ((i1 >= 0) && (i1 < arrayOfString2.length)) {
        return arrayOfString2[i1];
      }
      return String.valueOf(paramInt) + ":Unknown IAB Helper Error";
    }
    if ((paramInt < 0) || (paramInt >= arrayOfString1.length)) {
      return String.valueOf(paramInt) + ":Unknown";
    }
    return arrayOfString1[paramInt];
  }
  
  private ArrayList<ArrayList<String>> a(ArrayList<String> paramArrayList)
  {
    ArrayList localArrayList1 = new ArrayList();
    int i1 = paramArrayList.size() / 20;
    int i2 = paramArrayList.size() % 20;
    for (int i3 = 0; i3 < i1; i3++)
    {
      ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator1 = paramArrayList.subList(i3 * 20, 20 + i3 * 20).iterator();
      while (localIterator1.hasNext()) {
        localArrayList2.add((String)localIterator1.next());
      }
      localArrayList1.add(localArrayList2);
    }
    if (i2 != 0)
    {
      ArrayList localArrayList3 = new ArrayList();
      Iterator localIterator2 = paramArrayList.subList(i1 * 20, i2 + i1 * 20).iterator();
      while (localIterator2.hasNext()) {
        localArrayList3.add((String)localIterator2.next());
      }
      localArrayList1.add(localArrayList3);
    }
    return localArrayList1;
  }
  
  private void a(bl parambl)
  {
    a(parambl, false);
  }
  
  private void a(bl parambl, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (this.q == null)
        {
          if (this.k)
          {
            this.j.add(parambl);
            a("Queue is blocked, added task to pending queue (" + this.j.size() + "): " + parambl.b());
            if (paramBoolean) {
              a(true);
            }
            return;
          }
          a(parambl);
          a("Added task to executor: " + parambl.b());
          continue;
        }
        a("Attempt to schedule task after IAB setup has failed: " + parambl.b());
      }
      finally {}
      parambl.a(this.q);
    }
  }
  
  private void a(bo parambo, bh parambh)
  {
    if (parambh != null) {
      this.p.post(new at(this, parambh, parambo));
    }
  }
  
  private void a(bo parambo, bi parambi)
  {
    this.q = parambo;
    parambi.a(parambo);
    a("reportOnInitFailed, result: " + parambo);
    Iterator localIterator = this.j.iterator();
    while (localIterator.hasNext())
    {
      bl localbl = (bl)localIterator.next();
      a("calling onInitFailed for task " + localbl.b());
      localbl.a(parambo);
    }
    this.j.clear();
  }
  
  private void a(bu parambu)
  {
    d("consume");
    if (!parambu.a().equals("inapp")) {
      throw new ao(-1010, "Items of type '" + parambu.a() + "' can't be consumed.");
    }
    try
    {
      locala = d();
      str = parambu.h();
      localbn = parambu.d();
      if ((str == null) || (str.equals("")))
      {
        b("Can't consume " + localbn + ". No token.");
        throw new ao(-1007, "PurchaseInfo is missing token for productId: " + localbn + " " + parambu);
      }
    }
    catch (RemoteException localRemoteException)
    {
      com.android.b.a.a locala;
      String str;
      bn localbn;
      throw new ao(-1001, "Remote exception while consuming. PurchaseInfo: " + parambu, localRemoteException);
      a("Consuming productId: " + localbn + ", token: " + str);
      int i1 = locala.b(3, this.e.getPackageName(), str);
      if (i1 == 0)
      {
        a("Successfully consumed productId: " + localbn);
        return;
      }
      a("Error consuming consuming productId " + localbn + ". " + a(i1));
      throw new ao(i1, "Error consuming productId " + localbn);
    }
    catch (Exception localException)
    {
      throw new ao(-1008, "Exception while consuming. PurchaseInfo: " + parambu, localException);
    }
  }
  
  private void a(Runnable paramRunnable)
  {
    this.i.execute(paramRunnable);
    c();
  }
  
  private void a(List<bu> paramList, bf parambf, bg parambg)
  {
    a("consumeAsyncInternal");
    a(new bb(this, "consumeAsyncInternal", paramList, parambf, parambg));
  }
  
  private void a(boolean paramBoolean)
  {
    try
    {
      a("setQueueBlocked " + paramBoolean);
      this.p.removeCallbacks(this.s);
      this.k = paramBoolean;
      if (!this.k)
      {
        Iterator localIterator = this.j.iterator();
        while (localIterator.hasNext()) {
          a((bl)localIterator.next());
        }
        this.j.clear();
      }
    }
    finally {}
  }
  
  private void c()
  {
    if (this.o != null) {
      this.o.a();
    }
  }
  
  private com.android.b.a.a d()
  {
    com.android.b.a.a locala = this.f;
    if (locala == null) {
      throw new Exception("mService == null");
    }
    if (this.e == null) {
      throw new Exception("mContext == null");
    }
    return locala;
  }
  
  private void d(String paramString)
  {
    if (!this.c)
    {
      b("Illegal state for operation (" + paramString + "): IAB helper is not set up.");
      throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + paramString);
    }
  }
  
  public void a()
  {
    a("Disposing.");
    this.c = false;
    if (this.g != null)
    {
      a("Unbinding from service.");
      if ((this.e != null) && (this.l))
      {
        this.e.unbindService(this.g);
        this.l = false;
      }
      this.g = null;
      this.f = null;
      this.n = null;
    }
    if (this.i != null)
    {
      this.i.shutdown();
      this.i = null;
    }
  }
  
  public void a(Activity paramActivity, bn parambn, int paramInt, bh parambh, String paramString)
  {
    a(paramActivity, parambn, "inapp", paramInt, parambh, paramString);
  }
  
  public void a(Activity paramActivity, bn parambn, String paramString1, int paramInt, bh parambh, String paramString2)
  {
    a(new as(this, "launchPurchaseFlow", paramString1, parambh, parambn, paramString2, paramInt, paramActivity), true);
  }
  
  public void a(be parambe)
  {
    this.o = parambe;
  }
  
  void a(bi parambi)
  {
    if (this.c) {
      throw new IllegalStateException("IAB helper is already set up.");
    }
    a("Starting in-app billing setup.");
    this.g = new aq(this, parambi);
    Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
    if (!this.e.getPackageManager().queryIntentServices(localIntent, 0).isEmpty())
    {
      this.l = this.e.bindService(localIntent, this.g, 1);
      return;
    }
    a(new bo(3, "Billing service unavailable on device."), parambi);
  }
  
  public void a(bn parambn, bk parambk)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(parambn);
    a(localArrayList, parambk);
  }
  
  public void a(bu parambu, bf parambf)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(parambu);
    a(localArrayList, parambf, null);
  }
  
  void a(String paramString) {}
  
  public void a(List<bu> paramList, bg parambg)
  {
    a(paramList, null, parambg);
  }
  
  public void a(List<bn> paramList, bk parambk)
  {
    a(new ax(this, "queryProductDetailsAsync", paramList, parambk));
  }
  
  public void a(boolean paramBoolean, List<bn> paramList, bj parambj)
  {
    a(new au(this, "queryInventoryAsync", paramBoolean, paramList, parambj));
  }
  
  boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    a("handleActivityResult, requestCode:" + paramInt1 + ", resultCode:" + paramInt2);
    a(false);
    if (paramInt1 != this.h) {
      return false;
    }
    d("handleActivityResult");
    c();
    if (paramIntent == null)
    {
      b("Null data in IAB activity result.");
      bo localbo6 = new bo(-1002, "Null data in IAB result");
      if (this.n != null) {
        this.n.a(localbo6, null);
      }
      return true;
    }
    int i1 = a(paramIntent);
    String str1 = paramIntent.getStringExtra("INAPP_PURCHASE_DATA");
    String str2 = paramIntent.getStringExtra("INAPP_DATA_SIGNATURE");
    if ((paramInt2 == -1) && (i1 == 0))
    {
      a("Successful resultcode from purchase activity.");
      a("Purchase data: " + str1);
      a("Data signature: " + str2);
      a("Extras: " + paramIntent.getExtras());
      if ((str1 == null) || (str2 == null))
      {
        b("BUG: either purchaseData or dataSignature is null.");
        a("Extras: " + paramIntent.getExtras().toString());
        bo localbo4 = new bo(-1008, "IAB returned null purchaseData or dataSignature");
        if (this.n != null) {
          this.n.a(localbo4, null);
        }
        return true;
      }
    }
    for (;;)
    {
      try
      {
        bu localbu = new bu(str1, str2);
        if (this.n != null) {
          this.n.a(new bo(0, "Success"), localbu);
        }
        return true;
      }
      catch (JSONException localJSONException)
      {
        b("Failed to parse purchase data.");
        localJSONException.printStackTrace();
        bo localbo5 = new bo(-1002, "Failed to parse purchase data.");
        if (this.n != null) {
          this.n.a(localbo5, null);
        }
        return true;
      }
      if (paramInt2 == -1)
      {
        a("Result code was OK but in-app billing response was not OK: " + a(i1));
        if (this.n != null)
        {
          bo localbo3 = new bo(i1, "Problem purchashing item.");
          this.n.a(localbo3, null);
        }
      }
      else if (paramInt2 == 0)
      {
        a("Purchase canceled - Response: " + a(i1));
        bo localbo2 = new bo(i1, "User canceled.");
        if (this.n != null) {
          this.n.a(localbo2, null);
        }
      }
      else
      {
        b("Purchase failed. Result code: " + Integer.toString(paramInt2) + ". Response: " + a(i1));
        bo localbo1 = new bo(-1006, "Unknown purchase response.");
        if (this.n != null) {
          this.n.a(localbo1, null);
        }
      }
    }
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 112	com/viber/voip/billing/ap:k	Z
    //   6: ifeq +28 -> 34
    //   9: aload_0
    //   10: ldc_w 724
    //   13: invokevirtual 110	com/viber/voip/billing/ap:a	(Ljava/lang/String;)V
    //   16: aload_0
    //   17: getfield 82	com/viber/voip/billing/ap:p	Landroid/os/Handler;
    //   20: aload_0
    //   21: getfield 89	com/viber/voip/billing/ap:s	Ljava/lang/Runnable;
    //   24: ldc2_w 725
    //   27: invokevirtual 730	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   30: pop
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: aload_0
    //   35: ldc_w 732
    //   38: invokevirtual 110	com/viber/voip/billing/ap:a	(Ljava/lang/String;)V
    //   41: goto -10 -> 31
    //   44: astore_1
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_1
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	ap
    //   44	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	31	44	finally
    //   34	41	44	finally
  }
  
  void b(String paramString)
  {
    a.a(t, "ERROR: " + paramString);
  }
  
  void c(String paramString)
  {
    a.a(t, "WARNING: " + paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.ap
 * JD-Core Version:    0.7.0.1
 */