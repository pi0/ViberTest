package com.viber.voip.api.billing;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

class IabHelper$1
  implements ServiceConnection
{
  IabHelper$1(IabHelper paramIabHelper, IabHelper.OnIabSetupFinishedListener paramOnIabSetupFinishedListener) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.this$0.logDebug("Billing service connected.");
    this.this$0.mService = IInAppBillingService.Stub.asInterface(paramIBinder);
    String str = this.this$0.mContext.getPackageName();
    try
    {
      this.this$0.logDebug("Checking for in-app billing 3 support.");
    }
    catch (RemoteException localRemoteException)
    {
      int k;
      label62:
      int j;
      if (this.val$listener != null) {
        this.val$listener.onIabSetupFinished(new IabResult(-1001, "RemoteException while setting up in-app billing."));
      }
      localRemoteException.printStackTrace();
    }
    try
    {
      k = this.this$0.mService.isBillingSupported(3, str, "inapp");
      i = k;
    }
    catch (Exception localException)
    {
      i = 6;
      break label62;
    }
    if (i != 0)
    {
      if (this.val$listener != null) {
        this.val$listener.onIabSetupFinished(new IabResult(i, "Error checking for billing v3 support."));
      }
      this.this$0.mSubscriptionsSupported = false;
      return;
    }
    this.this$0.logDebug("In-app billing version 3 supported for " + str);
    j = this.this$0.mService.isBillingSupported(3, str, "subs");
    if (j == 0)
    {
      this.this$0.logDebug("Subscriptions AVAILABLE.");
      this.this$0.mSubscriptionsSupported = true;
    }
    for (;;)
    {
      this.this$0.mSetupDone = true;
      IabHelper.access$000(this.this$0, false);
      if (this.val$listener == null) {
        break;
      }
      this.val$listener.onIabSetupFinished(new IabResult(0, "Setup successful."));
      return;
      this.this$0.logDebug("Subscriptions NOT AVAILABLE. Response: " + j);
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    this.this$0.logDebug("Billing service disconnected.");
    this.this$0.mService = null;
    IabHelper.access$000(this.this$0, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.api.billing.IabHelper.1
 * JD-Core Version:    0.7.0.1
 */