package com.viber.voip.phone;

import android.app.KeyguardManager;
import android.app.KeyguardManager.KeyguardLock;
import android.content.Context;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.WifiLock;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.provider.Settings.System;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.e.u;
import com.viber.voip.g.a;
import com.viber.voip.g.g;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

public class v
{
  private final Context a;
  private x b = x.a;
  private PowerManager.WakeLock c;
  private WifiManager.WifiLock d;
  private a e;
  private KeyguardManager f;
  private KeyguardManager.KeyguardLock g;
  private Object h = new Object();
  private PowerManager i;
  private WifiManager j;
  
  public v(Context paramContext)
  {
    this.a = paramContext;
    this.i = ((PowerManager)paramContext.getSystemService("power"));
    this.j = ((WifiManager)paramContext.getSystemService("wifi"));
    this.c = this.i.newWakeLock(805306394, "PhoneApp");
    this.d = this.j.createWifiLock(1, "VoipServiceWifiLock");
    g();
    this.f = ((KeyguardManager)paramContext.getSystemService("keyguard"));
    this.g = this.f.newKeyguardLock("Viber");
  }
  
  public Uri a(boolean paramBoolean1, boolean paramBoolean2)
  {
    int k;
    String str;
    if ((!paramBoolean1) && (ViberApplication.preferences().b(j.N(), j.O())))
    {
      k = 1;
      str = ViberApplication.preferences().b(j.av(), null);
      if (str != null) {
        break label59;
      }
    }
    label59:
    for (Uri localUri = Settings.System.DEFAULT_RINGTONE_URI;; localUri = Uri.parse(str))
    {
      if (k == 0) {
        break label69;
      }
      return localUri;
      k = 0;
      break;
    }
    label69:
    StringBuilder localStringBuilder = new StringBuilder().append("android.resource://com.viber.voip/");
    if (paramBoolean1) {}
    for (int m = 2131099675;; m = 2131099676) {
      return Uri.parse(m);
    }
  }
  
  public u a()
  {
    return u.a();
  }
  
  void a(x paramx)
  {
    synchronized (this.h)
    {
      if (this.b != paramx) {}
      switch (w.a[paramx.ordinal()])
      {
      default: 
        if (this.c.isHeld()) {
          this.c.release();
        }
        this.b = paramx;
        return;
      }
      this.c.acquire();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if ((paramBoolean) && (!this.d.isHeld())) {
      this.d.acquire();
    }
    while ((paramBoolean) || (!this.d.isHeld())) {
      return;
    }
    this.d.release();
  }
  
  public void b() {}
  
  public void c() {}
  
  public void d()
  {
    int k = 1;
    ViberApplication.log(3, "PhoneApp", "updateWakeState start");
    k localk = e();
    int m;
    int n;
    label35:
    int i1;
    label43:
    int i2;
    label52:
    int i3;
    label60:
    int i4;
    if (localk != null)
    {
      m = localk.d().c();
      if (m != 5) {
        break label123;
      }
      n = k;
      if (m != 4) {
        break label129;
      }
      i1 = k;
      if (m != 7) {
        break label135;
      }
      i2 = k;
      if (m != 3) {
        break label141;
      }
      i3 = k;
      if (m != 6) {
        break label147;
      }
      i4 = k;
      label69:
      if ((n == 0) && (i1 == 0) && (i2 == 0) && (i3 == 0) && (i4 == 0)) {
        break label153;
      }
      label94:
      if (k == 0) {
        break label158;
      }
    }
    label129:
    label135:
    label141:
    label147:
    label153:
    label158:
    for (x localx = x.b;; localx = x.a)
    {
      a(localx);
      if (k == 0) {
        break label166;
      }
      b();
      return;
      m = 0;
      break;
      label123:
      n = 0;
      break label35;
      i1 = 0;
      break label43;
      i2 = 0;
      break label52;
      i3 = 0;
      break label60;
      i4 = 0;
      break label69;
      k = 0;
      break label94;
    }
    label166:
    c();
  }
  
  k e()
  {
    return ((ViberApplication)this.a.getApplicationContext()).getPhoneController(false).getCurrentCall();
  }
  
  public a f()
  {
    return this.e;
  }
  
  public void g()
  {
    this.e = g.a(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.v
 * JD-Core Version:    0.7.0.1
 */