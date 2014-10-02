package com.viber.voip.phone;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.ViberInInfo;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.g;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.billing.ae;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.j;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.phone.b.ai;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.l;
import com.viber.voip.registration.cp;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.util.at;
import com.viber.voip.util.gl;
import com.viber.voip.viberout.e;
import java.util.Arrays;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

@Deprecated
public class PhoneActivity
  extends ViberFragmentActivity
  implements com.viber.voip.g.b, com.viber.voip.phone.call.i
{
  private static boolean q;
  private static boolean r;
  private final int a = 1800;
  private final int b = 5000;
  private ab c;
  private ac d;
  private ViberApplication e = ViberApplication.getInstance();
  private DialogInterface f;
  private com.viber.voip.phone.b.b.c g;
  private g h;
  private int i = 0;
  private com.viber.voip.viberout.i j;
  private Handler k = new Handler();
  private Timer l = new Timer();
  private TimerTask m;
  private DialerController n;
  private com.viber.voip.phone.call.a o;
  private com.viber.voip.phone.call.k p;
  private t s = new t(this, null);
  private Runnable t;
  
  private void a(ae paramae)
  {
    b("rescheduleBuyCredits");
    if (this.t != null) {
      this.k.removeCallbacks(this.t);
    }
    this.t = new n(this, paramae);
    this.k.postDelayed(this.t, 250L);
  }
  
  private void a(h paramh, String paramString1, String paramString2)
  {
    com.viber.voip.messages.i locali = this.e.getMessagesManager();
    MessageEntityImpl localMessageEntityImpl = new com.viber.voip.messages.controller.b.b(0L, paramString2, 0).a("text", paramString1, 0);
    if ((paramh != null) && (paramh.r()) && ((localMessageEntityImpl.getLat() == 0) || (localMessageEntityImpl.getLng() == 0))) {
      localMessageEntityImpl.setExtraStatus(0);
    }
    locali.c().a(localMessageEntityImpl);
  }
  
  private void a(String paramString1, String paramString2)
  {
    try
    {
      com.viber.voip.messages.i locali = this.e.getMessagesManager();
      if ((!TextUtils.isEmpty(paramString2)) && (locali != null)) {
        locali.c().a(0, paramString2, 0L, "", 0, true, null, new o(this, paramString1, paramString2));
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void c(String paramString)
  {
    at.b(this.f);
    this.n.handleDialogReply(2, paramString);
  }
  
  public static void c(boolean paramBoolean)
  {
    q = paramBoolean;
  }
  
  public static void d(boolean paramBoolean)
  {
    r = paramBoolean;
  }
  
  public static boolean g()
  {
    return q;
  }
  
  public static boolean h()
  {
    return r;
  }
  
  private boolean i()
  {
    return (this.p != null) && ((this.p.d().c() == 5) || (this.p.d().c() == 7));
  }
  
  private boolean j()
  {
    if (this.p != null) {}
    for (int i1 = this.p.d().c(); (i1 == 4) || (i1 == 6) || (i1 == 3); i1 = -1) {
      return true;
    }
    return false;
  }
  
  private g k()
  {
    if (this.h == null)
    {
      com.viber.voip.phone.call.k localk = this.p;
      if (localk != null) {
        this.h = localk.k();
      }
    }
    return this.h;
  }
  
  protected void a(int paramInt, String paramString) {}
  
  public void a(com.viber.voip.phone.call.k paramk)
  {
    Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", paramk.c().b(), null));
    localIntent.putExtra("viber_out", paramk.f());
    bc.a().a(com.viber.voip.a.a.v.h(paramk.f()));
    com.viber.service.b.a(this, localIntent);
  }
  
  public void a(com.viber.voip.phone.call.k paramk, String paramString)
  {
    if (paramk != null)
    {
      if (TextUtils.isEmpty(paramString))
      {
        Intent localIntent = j.a(0L, 0L, paramk.c().b(), 0, 0L, 0L, paramk.c().a());
        localIntent.setFlags(268435456);
        startActivity(localIntent);
        finish();
      }
    }
    else {
      return;
    }
    a(paramString, paramk.c().b());
  }
  
  public void a(String paramString)
  {
    at.a(this, null, getResources().getString(2131493771), new p(this, paramString), false);
  }
  
  public void a(String paramString, int paramInt)
  {
    com.viber.voip.phone.call.k localk = this.p;
    if (localk != null) {
      bc.a().a(k().a("Option " + paramInt, Long.valueOf(localk.d().t() / 1000L)));
    }
    this.n.handleDecline();
    a(localk, paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    View localView = findViewById(2131165313);
    if (localView == null) {
      return;
    }
    if (this.c != null) {
      this.c.a(paramBoolean);
    }
    if (paramBoolean) {}
    for (int i1 = 8;; i1 = 0)
    {
      localView.setVisibility(i1);
      if (this.g != null) {
        this.g.a(paramBoolean);
      }
      b(paramBoolean);
      return;
    }
  }
  
  public boolean a()
  {
    List localList = ViberApplication.getInstance().getActivityManager().getRunningTasks(1);
    if ((localList != null) && (!localList.isEmpty()))
    {
      ActivityManager.RunningTaskInfo localRunningTaskInfo = (ActivityManager.RunningTaskInfo)localList.get(0);
      if (localRunningTaskInfo != null)
      {
        String str1 = localRunningTaskInfo.baseActivity.getClassName();
        String str2 = localRunningTaskInfo.baseActivity.getPackageName();
        if ((!PhoneActivity.class.getName().equals(str1)) && (getPackageName().equals(str2))) {
          return true;
        }
      }
    }
    return false;
  }
  
  protected void b(String paramString)
  {
    a(3, paramString);
  }
  
  @TargetApi(11)
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      getWindow().addFlags(1024);
      if (Build.VERSION.SDK_INT >= 11) {
        getWindow().getDecorView().setSystemUiVisibility(2);
      }
    }
    do
    {
      return;
      getWindow().clearFlags(1024);
    } while (Build.VERSION.SDK_INT < 11);
    getWindow().getDecorView().setSystemUiVisibility(0);
  }
  
  public boolean b()
  {
    return (this.p != null) && (this.p.a() == 1);
  }
  
  public void c()
  {
    this.g = ((com.viber.voip.phone.b.b.c)getSupportFragmentManager().findFragmentByTag("secure_trust_dialog"));
    if (this.g == null) {
      this.g = new com.viber.voip.phone.b.b.c();
    }
    this.g.show(getSupportFragmentManager(), "secure_trust_dialog");
  }
  
  public void d()
  {
    b("handleRedial action");
    com.viber.voip.phone.call.k localk = this.p;
    bc localbc = bc.a();
    g localg = com.viber.voip.a.a.v;
    if ((localk != null) && (localk.f())) {}
    for (boolean bool = true;; bool = false)
    {
      localbc.a(localg.h(bool));
      startActivity(new Intent("com.viber.voip.action.REDIAL"));
      return;
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((i()) && (paramKeyEvent.getAction() == 0) && ((24 == paramKeyEvent.getKeyCode()) || (25 == paramKeyEvent.getKeyCode()))) {
      return ViberApplication.getInstance().getSoundService().stopRingtone();
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.e.isTouchInputEnabled()) {
      return true;
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public void e()
  {
    com.viber.voip.phone.call.k localk = this.p;
    if ((localk != null) && (localk.b().equals(l.a)))
    {
      this.n.handleAnswer();
      bc.a().a(k().a(Long.valueOf(this.p.d().t() / 1000L)));
    }
  }
  
  public void f()
  {
    com.viber.voip.phone.call.k localk = this.p;
    if (localk != null) {
      bc.a().a(k().b(Long.valueOf(localk.d().t() / 1000L)));
    }
    this.n.handleDecline();
  }
  
  public void finish()
  {
    super.finish();
    b("Finish " + Arrays.toString(Thread.currentThread().getStackTrace()));
    overridePendingTransition(2130968577, 2130968589);
  }
  
  public void onBackPressed()
  {
    if (j())
    {
      ab localab = this.d.b();
      if ((localab == null) || (!(localab instanceof com.viber.voip.phone.b.k)) || (!((com.viber.voip.phone.b.k)localab).c())) {}
    }
    do
    {
      do
      {
        return;
      } while ((this.p != null) && (this.p.d().c() == 5));
      super.onBackPressed();
    } while (a());
    startActivity(new Intent("com.viber.voip.action.CONTACTS"));
  }
  
  public void onCallInfoReady(com.viber.voip.phone.call.k paramk)
  {
    this.p = paramk;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    Activity localActivity = ViberActivity.sLastUsedActivity;
    super.onCreate(paramBundle);
    ViberActivity.sLastUsedActivity = localActivity;
    this.n = ViberApplication.getInstance().getPhoneController(true).getDialerController();
    this.o = ViberApplication.getInstance().getPhoneController(true).getCallHandler();
    this.o.a(this);
    getWindow().setFormat(1);
    if (!ViberApplication.isTablet()) {
      setRequestedOrientation(1);
    }
    Window localWindow = getWindow();
    localWindow.addFlags(4751360);
    if (!((PowerManager)getSystemService("power")).isScreenOn()) {
      localWindow.addFlags(2097152);
    }
    boolean bool1;
    int i2;
    if ((Build.VERSION.SDK_INT == 16) && (Build.MANUFACTURER.equals("samsung")) && (Build.MODEL.equals("GT-I9300")))
    {
      bool1 = true;
      String str = this.e.getRegistrationValues().d();
      int i1 = str.charAt(-1 + str.length());
      if ((!bool1) || (i1 % 2 != 0)) {
        break label349;
      }
      i2 = 1;
      label183:
      boolean bool2 = false;
      if (i2 != 0)
      {
        boolean bool3 = b();
        bool2 = false;
        if (bool3) {
          bool2 = true;
        }
      }
      ViberInInfo localViberInInfo = this.e.getViberInInfo();
      localViberInInfo.isViberInNativeCallScreen = bool2;
      localViberInInfo.isViberInTestGroup = bool1;
      if ((!bool2) || (1 != getIntent().getIntExtra("extra_screen_factory", 1))) {
        break label355;
      }
    }
    label349:
    label355:
    for (this.d = new com.viber.voip.phone.a.c(getWindow().getDecorView(), this);; this.d = new ai(getWindow().getDecorView(), this))
    {
      setTheme(2131558722);
      setContentView(this.d.e());
      if (ViberApplication.isTablet()) {
        gl.a(this);
      }
      this.j = e.c().b(this, getIntent());
      b("Create: " + getIntent());
      return;
      bool1 = false;
      break;
      i2 = 0;
      break label183;
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.o.b(this);
    e.c().a(this.j);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (i()) {}
    switch (paramInt)
    {
    default: 
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    e();
    return true;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (i()) {}
    switch (paramInt)
    {
    default: 
      return super.onKeyUp(paramInt, paramKeyEvent);
    }
    return true;
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    if (this.m != null) {
      this.m.cancel();
    }
    this.j = e.c().b(this, paramIntent);
    b("New Intent: " + paramIntent);
  }
  
  protected void onPause()
  {
    if (this.m != null) {
      this.m.cancel();
    }
    this.e.getPhoneApp().f().a(null);
    this.s.b();
    b("Pause: " + this.c);
    super.onPause();
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((this.p == null) || (this.p.d().c() == 0))
    {
      b("onResume Finish");
      finish();
      return;
    }
    this.s.a(this.p);
    this.s.a();
    this.s.c();
    this.e.getPhoneApp().f().a(this);
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
    b("onStop: " + this.c);
    if (this.c != null) {
      this.c.b();
    }
    i.a().a(false, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.PhoneActivity
 * JD-Core Version:    0.7.0.1
 */