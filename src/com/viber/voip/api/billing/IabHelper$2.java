package com.viber.voip.api.billing;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.os.RemoteException;

class IabHelper$2
  implements Runnable
{
  IabHelper$2(IabHelper paramIabHelper, String paramString1, String paramString2, String paramString3, IabHelper.OnIabPurchaseFinishedListener paramOnIabPurchaseFinishedListener, int paramInt, Activity paramActivity) {}
  
  public void run()
  {
    try
    {
      this.this$0.logDebug("Constructing buy intent for " + this.val$productId + ", item type: " + this.val$itemType);
      Bundle localBundle = this.this$0.mService.getBuyIntent(3, this.this$0.mContext.getPackageName(), this.val$productId, this.val$itemType, this.val$extraData);
      int i = IabHelper.access$100(this.this$0, localBundle);
      if (i != 0)
      {
        this.this$0.logError("Unable to buy item, Error response: " + IabHelper.getResponseDesc(i));
        IabResult localIabResult3 = new IabResult(i, "Unable to buy item");
        if (this.val$listener != null) {
          this.val$listener.onIabPurchaseFinished(localIabResult3, null);
        }
        IabHelper.access$000(this.this$0, false);
        return;
      }
      PendingIntent localPendingIntent = (PendingIntent)localBundle.getParcelable("BUY_INTENT");
      this.this$0.logDebug("Launching buy intent for " + this.val$productId + ". Request code: " + this.val$requestCode);
      this.this$0.mRequestCode = this.val$requestCode;
      this.this$0.mPurchaseListener = this.val$listener;
      this.val$act.startIntentSenderForResult(localPendingIntent.getIntentSender(), this.val$requestCode, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
      return;
    }
    catch (IntentSender.SendIntentException localSendIntentException)
    {
      this.this$0.logError("SendIntentException while launching purchase flow for productId " + this.val$productId);
      localSendIntentException.printStackTrace();
      IabResult localIabResult2 = new IabResult(-1004, "Failed to send intent.");
      if (this.val$listener != null) {
        this.val$listener.onIabPurchaseFinished(localIabResult2, null);
      }
      IabHelper.access$000(this.this$0, false);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      this.this$0.logError("RemoteException while launching purchase flow for productId " + this.val$productId);
      localRemoteException.printStackTrace();
      IabResult localIabResult1 = new IabResult(-1001, "Remote exception while starting purchase flow");
      if (this.val$listener != null) {
        this.val$listener.onIabPurchaseFinished(localIabResult1, null);
      }
      IabHelper.access$000(this.this$0, false);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.IabHelper.2
 * JD-Core Version:    0.7.0.1
 */