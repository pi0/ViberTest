package com.viber.voip.phone.call.a;

import android.app.Application;
import android.content.Intent;
import com.viber.jni.dialer.DialerControllerDelegate.DialerIncomingScreen;
import com.viber.jni.dialer.DialerControllerDelegate.DialerOutgoingScreen;
import com.viber.voip.ViberApplication;
import com.viber.voip.phone.call.i;
import com.viber.voip.phone.call.k;

public class f
  implements DialerControllerDelegate.DialerIncomingScreen, DialerControllerDelegate.DialerOutgoingScreen, i
{
  private h a = new h(this, null);
  private k b;
  private boolean c = false;
  private Application d;
  
  public f(Application paramApplication)
  {
    this.d = paramApplication;
  }
  
  private void a()
  {
    if (ViberApplication.getInstance().isOnForeground()) {}
    for (Intent localIntent = new Intent("com.viber.voip.action.CALL");; localIntent = new Intent("com.viber.voip.action.CALL_FROM_BACKGROUND"))
    {
      localIntent.setFlags(268763140);
      this.d.startActivity(localIntent);
      return;
    }
  }
  
  public void hideCall(String paramString, boolean paramBoolean)
  {
    this.b = null;
    this.c = false;
  }
  
  public void hideReception()
  {
    this.a.b();
    this.b = null;
    this.c = false;
  }
  
  public void onCallInfoReady(k paramk)
  {
    this.b = paramk;
    if (this.c) {
      a();
    }
  }
  
  public void showCall(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.c = true;
    if (this.b != null) {
      a();
    }
  }
  
  public void showReception(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    this.a.a();
    this.c = true;
    if (this.b != null) {
      a();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.call.a.f
 * JD-Core Version:    0.7.0.1
 */