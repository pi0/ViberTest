package com.viber.voip.billing;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.b.a.a;
import com.android.b.a.b;

class aq
  implements ServiceConnection
{
  aq(ap paramap, bi parambi) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.b.a("Billing service connected. curThread:" + Thread.currentThread());
    this.b.f = b.a(paramIBinder);
    String str = this.b.e.getPackageName();
    ap.a(this.b, new ar(this));
    ap.b(this.b).postDelayed(ap.a(this.b), 10000L);
    try
    {
      this.b.a("Checking for in-app billing 3 support.");
      int i = this.b.f.a(3, str, "inapp");
      if (i != 0)
      {
        if (this.a != null) {
          ap.a(this.b, new bo(i, "Error checking for billing v3 support."), this.a);
        }
        this.b.d = false;
        return;
      }
      this.b.a("In-app billing version 3 supported for " + str);
      int j = this.b.f.a(3, str, "subs");
      if (j == 0)
      {
        this.b.a("Subscriptions AVAILABLE.");
        this.b.d = true;
      }
      for (;;)
      {
        this.b.c = true;
        ap.a(this.b, false);
        ap.b(this.b).removeCallbacks(ap.a(this.b));
        if (this.a == null) {
          break;
        }
        this.a.a(new bo(0, "Setup successful."));
        return;
        this.b.a("Subscriptions NOT AVAILABLE. Response: " + j);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      if (this.a != null) {
        ap.a(this.b, new bo(-1001, "RemoteException while setting up in-app billing."), this.a);
      }
      localRemoteException.printStackTrace();
      return;
    }
    catch (Exception localException)
    {
      if (this.a != null) {
        ap.a(this.b, new bo(-1008, "Exception while setting up in-app billing: " + localException), this.a);
      }
      localException.printStackTrace();
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    this.b.a("Billing service disconnected.");
    this.b.f = null;
    ap.a(this.b, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.aq
 * JD-Core Version:    0.7.0.1
 */