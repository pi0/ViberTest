package com.viber.voip.phone;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Window;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerVideo;
import com.viber.jni.dialer.DialerLocalCallStateListener;
import com.viber.jni.dialer.DialerPhoneStateListener;
import com.viber.jni.dialer.DialerVideoListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.g;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.dk;
import com.viber.voip.phone.b.u;
import com.viber.voip.phone.b.y;
import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.l;
import com.viber.voip.phone.call.n;
import com.viber.voip.util.gl;
import com.viber.voip.util.gw;

public class PhoneFragmentActivity
  extends ViberFragmentActivity
  implements DialerControllerDelegate.DialerLocalCallState, DialerControllerDelegate.DialerPhoneState, DialerControllerDelegate.DialerVideo
{
  private final int a = 1800;
  private final int b = 5000;
  private a c;
  private PhoneControllerListener d;
  private Fragment e;
  private Runnable f;
  private boolean g = true;
  private boolean h = false;
  
  private void a()
  {
    Window localWindow = getWindow();
    localWindow.addFlags(4751360);
    if (!((PowerManager)getSystemService("power")).isScreenOn()) {
      localWindow.addFlags(2097152);
    }
  }
  
  private void a(String paramString)
  {
    Fragment localFragment = this.e;
    this.e = b(paramString);
    if ((this.e != null) && (!this.e.isAdded()))
    {
      if ((localFragment != null) && (localFragment != this.e) && (localFragment.getChildFragmentManager() != null) && (localFragment.getChildFragmentManager().getBackStackEntryCount() > 0)) {
        localFragment.getChildFragmentManager().popBackStackImmediate();
      }
      getSupportFragmentManager().beginTransaction().replace(2131166021, this.e, paramString).commit();
    }
  }
  
  private Fragment b(String paramString)
  {
    Object localObject = getSupportFragmentManager().findFragmentByTag(paramString);
    if (localObject == null)
    {
      if (!paramString.equals("incoming_call")) {
        break label32;
      }
      localObject = new y();
    }
    label32:
    do
    {
      return localObject;
      if (paramString.equals("incall_call")) {
        return new u();
      }
    } while (!paramString.equals("end_call_call"));
    return new com.viber.voip.phone.b.e();
  }
  
  private void b()
  {
    getWindow().setFormat(1);
    if (!ViberApplication.isTablet())
    {
      setRequestedOrientation(1);
      return;
    }
    gl.a(this);
  }
  
  private void c()
  {
    this.h = true;
    if (!this.g) {
      return;
    }
    k localk = this.c.c();
    d();
    if (this.f == null) {
      this.f = new z(this, null);
    }
    a("end_call_call");
    boolean bool = localk.d().f();
    Handler localHandler = dk.a.a();
    Runnable localRunnable = this.f;
    if (bool) {}
    for (long l = 5000L;; l = 1800L)
    {
      localHandler.postDelayed(localRunnable, l);
      return;
    }
  }
  
  private void d()
  {
    if (this.f != null) {
      dk.a.a().removeCallbacks(this.f);
    }
  }
  
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 11) || ((paramInt1 == 3) && (this.c.c().d().c() != 8)))
    {
      finish();
      return;
    }
    com.viber.voip.viberout.e.c().b(this, paramInt1);
  }
  
  public void onCallStarted(boolean paramBoolean)
  {
    d();
    a("incall_call");
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    Activity localActivity = ViberActivity.sLastUsedActivity;
    super.onCreate(paramBundle);
    ViberActivity.sLastUsedActivity = localActivity;
    this.d = ViberApplication.getInstance().getPhoneController(false).getDelegatesManager();
    this.c = ViberApplication.getInstance().getPhoneController(true).getCallHandler();
    b();
    a();
    setContentView(2130903285);
    k localk = this.c.b();
    if (localk != null)
    {
      if ((localk.b() == l.a) && (localk.d().c() == 5)) {
        a("incoming_call");
      }
    }
    else {
      return;
    }
    a("incall_call");
  }
  
  protected void onDestroy()
  {
    d();
    super.onDestroy();
  }
  
  public void onHangup() {}
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.h = false;
    if ((paramIntent.getAction().equals("com.viber.voip.action.CALL")) && (paramIntent.getData() != null)) {
      a("incall_call");
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    this.d.getDialerLocalCallStateListener().removeDelegate(this);
    this.d.getDialerPhoneStateListener().removeDelegate(this);
    this.d.getDialerVideoListener().removeDelegate(this);
    com.viber.voip.viberout.e.c().b(false);
    d();
    this.g = false;
  }
  
  public int onPeerVideoEnded()
  {
    return 0;
  }
  
  public int onPeerVideoEndedAck()
  {
    return 0;
  }
  
  public int onPeerVideoStarted()
  {
    gw.a(this, false);
    return 0;
  }
  
  public int onPeerVideoStartedAck()
  {
    return 0;
  }
  
  public void onPhoneStateChanged(int paramInt)
  {
    k localk = this.c.c();
    if ((localk.i()) || (paramInt == 0)) {
      c();
    }
    g localg = localk.k();
    int i = localk.d().o();
    int j = localk.d().p();
    switch (paramInt)
    {
    case 5: 
    case 7: 
    case 9: 
    default: 
      return;
    case 2: 
    case 3: 
      bc.a().a(localg.e());
      return;
    case 4: 
      bc.a().a(localg.c());
      return;
    case 6: 
      bc.a().a(localg.d());
      return;
    case 10: 
      if (i == 1)
      {
        bc.a().a(localg.k());
        return;
      }
      if (j == 3)
      {
        bc.a().a(localg.h());
        return;
      }
      bc.a().a(localg.i());
      return;
    }
    bc.a().a(localg.j());
  }
  
  protected void onResume()
  {
    super.onResume();
    this.d.getDialerLocalCallStateListener().registerDelegate(this, dk.a.a());
    this.d.getDialerPhoneStateListener().registerDelegate(this, dk.a.a());
    this.d.getDialerVideoListener().registerDelegate(this, dk.a.a());
    k localk = this.c.b();
    this.g = true;
    if (localk == null)
    {
      if (!this.h) {
        break label101;
      }
      this.h = false;
      c();
    }
    for (;;)
    {
      com.viber.voip.viberout.e.c().b(true);
      return;
      label101:
      finish();
    }
  }
  
  protected void onResumeFragments()
  {
    super.onResumeFragments();
    k localk = this.c.b();
    this.g = true;
    if (localk != null)
    {
      d();
      if ((localk.b() == l.a) && (localk.d().c() == 5)) {
        a("incoming_call");
      }
    }
    else
    {
      return;
    }
    if (localk.i())
    {
      c();
      return;
    }
    a("incall_call");
  }
  
  protected void onStart()
  {
    Activity localActivity = ViberActivity.sLastUsedActivity;
    super.onStart();
    ViberActivity.sLastUsedActivity = localActivity;
    i.a().a(true, false);
  }
  
  protected void onStop()
  {
    super.onStop();
    i.a().a(false, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.PhoneFragmentActivity
 * JD-Core Version:    0.7.0.1
 */