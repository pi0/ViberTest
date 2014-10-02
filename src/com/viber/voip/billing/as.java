package com.viber.voip.billing;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.os.RemoteException;
import com.android.b.a.a;

class as
  extends bl
{
  as(ap paramap, String paramString1, String paramString2, bh parambh, bn parambn, String paramString3, int paramInt, Activity paramActivity)
  {
    super(paramap, paramString1);
  }
  
  public void a()
  {
    if ((this.a.equals("subs")) && (!this.g.d))
    {
      bo localbo5 = new bo(-1009, "Subscriptions are not available.");
      ap.a(this.g, localbo5, this.b);
      return;
    }
    try
    {
      a locala = ap.c(this.g);
      this.g.a("Constructing buy intent for " + this.c + ", item type: " + this.a);
      localBundle = locala.a(3, this.g.e.getPackageName(), this.c.toString(), this.a, this.d);
      int i = ap.a(this.g, localBundle);
      if (i != 0)
      {
        this.g.b("Unable to buy item, Error response: " + ap.a(i));
        bo localbo4 = new bo(i, "Unable to buy item");
        ap.a(this.g, localbo4, this.b);
        ap.a(this.g, false);
        return;
      }
    }
    catch (IntentSender.SendIntentException localSendIntentException)
    {
      Bundle localBundle;
      this.g.b("SendIntentException while launching purchase flow for productId " + this.c);
      localSendIntentException.printStackTrace();
      bo localbo3 = new bo(-1004, "Failed to send intent.");
      ap.a(this.g, localbo3, this.b);
      ap.a(this.g, false);
      return;
      PendingIntent localPendingIntent = (PendingIntent)localBundle.getParcelable("BUY_INTENT");
      this.g.a("Launching buy intent for " + this.c + ". Request code: " + this.e);
      this.g.h = this.e;
      this.g.n = this.b;
      this.f.startIntentSenderForResult(localPendingIntent.getIntentSender(), this.e, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      this.g.b("RemoteException while launching purchase flow for productId " + this.c);
      localRemoteException.printStackTrace();
      bo localbo2 = new bo(-1001, "Remote exception while starting purchase flow");
      ap.a(this.g, localbo2, this.b);
      ap.a(this.g, false);
      return;
    }
    catch (Exception localException)
    {
      this.g.b("Exception while launching purchase flow for productId " + this.c);
      localException.printStackTrace();
      bo localbo1 = new bo(-1008, "Exception while starting purchase flow");
      ap.a(this.g, localbo1, this.b);
      ap.a(this.g, false);
    }
  }
  
  void a(bo parambo)
  {
    ap.a(this.g, parambo, this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.as
 * JD-Core Version:    0.7.0.1
 */