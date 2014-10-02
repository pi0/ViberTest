package com.viber.voip.viberout;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.telephony.PhoneNumberUtils;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerLocalCallStateListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.WelcomeActivity;
import com.viber.voip.a.bc;
import com.viber.voip.billing.ae;
import com.viber.voip.billing.dt;
import com.viber.voip.dk;
import com.viber.voip.dl;
import com.viber.voip.e.u;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.l;
import com.viber.voip.util.hd;
import com.viber.voip.viberout.promotion.b;
import com.viber.voip.viberout.ui.ViberOutDialogs;

public class e
  extends PhoneControllerDelegateAdapter
{
  private static final String a = e.class.getSimpleName();
  private static e c;
  private boolean b;
  private b d;
  private Handler e = new Handler();
  private a f;
  private String g;
  private String h;
  private long i;
  private com.viber.voip.phone.call.a j;
  private long k;
  private boolean l;
  private Runnable m = new g(this);
  private boolean n;
  
  private e()
  {
    e("ctor()");
    this.d = new b();
    this.d.d();
    this.d.c();
    this.f = new a(this);
  }
  
  public static void a()
  {
    l locall = ViberApplication.preferences();
    locall.a("vo_intro_splash_shown", false);
    locall.a("vo_contacts_splash_shown", false);
    locall.a("vo_contact_info_splash_shown", false);
    locall.a("vo_thank_you_splash_shown", false);
    locall.a("vo_contact_list_switched_to_all", false);
    locall.a("vo_trial_call_ended", false);
    locall.a("vo_exposure", 0);
    locall.a("PREF_VO_APP_ENTRY_ICON_COUNT", 0);
    locall.a("PREF_VO_APP_ENTRY_NOTIFICATION_COUNT", 0);
    locall.a("vo_activation_time", 0L);
    locall.a("PREF_VO_GROW_SPLASH_COUNT");
    locall.a("PREF_VO_GROW_SPLASH_TIME");
    locall.a("PREF_VO_GROW_UPGRADE_SPLASH_TIME");
  }
  
  private void a(int paramInt)
  {
    e("trackVOGroup: " + paramInt);
    bc.a().a(paramInt);
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    e("onAppFreshInstall, dbVersion:" + paramInt);
    if ((!a(paramContext)) && (paramInt >= 45)) {
      ViberApplication.preferences(paramContext).a("vo_exposure", 1);
    }
  }
  
  public static void a(Context paramContext, int paramInt1, int paramInt2)
  {
    e("onAppUpgrade, oldDbVersion: " + paramInt1 + ", dbVersion:" + paramInt2);
    if ((!a(paramContext)) && (paramInt2 >= 45)) {
      ViberApplication.preferences(paramContext).a("vo_exposure", 2);
    }
  }
  
  private void a(ae paramae, int paramInt)
  {
    boolean bool = ViberOutDialogs.a();
    e("showBuyCredits, endReason: " + paramInt + ", fromDialpad:" + bool);
    dt.a(paramae);
    if (bool)
    {
      ViberOutDialogs.b(paramae);
      return;
    }
    ViberOutDialogs.a(paramae);
  }
  
  private static boolean a(Context paramContext)
  {
    return false;
  }
  
  public static e c()
  {
    try
    {
      if (c == null)
      {
        c = new e();
        ViberApplication.getViberApp(new f());
      }
      e locale = c;
      return locale;
    }
    finally {}
  }
  
  private i c(Activity paramActivity, Intent paramIntent)
  {
    i locali = new i(paramActivity, paramIntent);
    locali.a = true;
    return locali;
  }
  
  private static void e(String paramString)
  {
    com.viber.voip.billing.a.a(a, paramString);
  }
  
  private long h()
  {
    return SystemClock.elapsedRealtime();
  }
  
  private void i()
  {
    e("scheduleForegroundCheck()");
    this.e.removeCallbacks(this.m);
    this.e.postDelayed(this.m, 1000L);
  }
  
  private void j()
  {
    e("resetForegroundCheck()");
    this.e.removeCallbacks(this.m);
  }
  
  private void k()
  {
    this.j = ViberApplication.getInstance().getPhoneController(false).getCallHandler();
    ViberApplication.getInstance().getPhoneController(false).getDelegatesManager().getDialerLocalCallStateListener().registerDelegate(new h(this), dk.a.a());
  }
  
  public void a(Activity paramActivity, Intent paramIntent)
  {
    b(paramActivity, paramIntent);
  }
  
  public void a(i parami)
  {
    j();
    this.k = h();
    e("checkActivityExit, " + parami);
    if (parami.a) {
      a(com.viber.voip.viberout.promotion.a.d);
    }
  }
  
  public void a(com.viber.voip.viberout.promotion.a parama)
  {
    if (dj.d())
    {
      e("fireEvent: Secondary device, not sending event: " + parama);
      return;
    }
    this.d.a(parama);
  }
  
  public void a(String paramString)
  {
    this.d.b(paramString);
  }
  
  /* Error */
  public void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: putfield 304	com/viber/voip/viberout/e:b	Z
    //   7: invokestatic 77	com/viber/voip/ViberApplication:preferences	()Lcom/viber/voip/settings/l;
    //   10: astore_3
    //   11: aload_3
    //   12: ldc_w 306
    //   15: aload_0
    //   16: getfield 304	com/viber/voip/viberout/e:b	Z
    //   19: invokeinterface 84 3 0
    //   24: pop
    //   25: iload_1
    //   26: ifne +39 -> 65
    //   29: aload_3
    //   30: ldc 105
    //   32: lconst_0
    //   33: invokeinterface 108 4 0
    //   38: pop
    //   39: invokestatic 231	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   42: new 308	android/content/Intent
    //   45: dup
    //   46: ldc_w 310
    //   49: invokespecial 312	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   52: ldc_w 314
    //   55: iload_1
    //   56: invokevirtual 318	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   59: invokevirtual 322	com/viber/voip/ViberApplication:sendBroadcast	(Landroid/content/Intent;)V
    //   62: aload_0
    //   63: monitorexit
    //   64: return
    //   65: aload_3
    //   66: ldc 105
    //   68: lconst_0
    //   69: invokeinterface 325 4 0
    //   74: lconst_0
    //   75: lcmp
    //   76: ifne -37 -> 39
    //   79: aload_3
    //   80: ldc 105
    //   82: invokestatic 330	java/lang/System:currentTimeMillis	()J
    //   85: invokeinterface 108 4 0
    //   90: pop
    //   91: goto -52 -> 39
    //   94: astore_2
    //   95: aload_0
    //   96: monitorexit
    //   97: aload_2
    //   98: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	e
    //   0	99	1	paramBoolean	boolean
    //   94	4	2	localObject	Object
    //   10	70	3	locall	l
    // Exception table:
    //   from	to	target	type
    //   2	25	94	finally
    //   29	39	94	finally
    //   39	62	94	finally
    //   65	91	94	finally
  }
  
  public i b(Activity paramActivity, Intent paramIntent)
  {
    j();
    String str = paramIntent.getAction();
    if (dl.a(str, new String[] { "com.viber.voip.action.CALL_FROM_BACKGROUND" }))
    {
      a(com.viber.voip.viberout.promotion.a.c);
      return c(paramActivity, paramIntent);
    }
    if ((paramActivity.getClass() != WelcomeActivity.class) && (u.b(paramIntent)))
    {
      e("Intent from notification, action: " + str);
      if (dl.a(str, new String[] { "com.viber.voip.action.CALL_INCOMING", "com.viber.voip.action.CALL", "com.viber.voip.action.VIEW_CONTACT", "com.viber.voip.action.MESSAGES", "com.viber.voip.action.CONVERSATION" }))
      {
        a(com.viber.voip.viberout.promotion.a.c);
        return c(paramActivity, paramIntent);
      }
    }
    else
    {
      if (paramActivity.getClass() != WelcomeActivity.class) {
        break label185;
      }
      if (!dl.a(str, new String[] { "android.intent.action.MAIN", "com.viber.voip.action.DEFAULT" })) {
        break label185;
      }
      a(com.viber.voip.viberout.promotion.a.b);
    }
    label185:
    do
    {
      do
      {
        for (;;)
        {
          return new i(paramActivity, paramIntent);
          if ((paramActivity.getClass() != WelcomeActivity.class) || (!paramIntent.getBooleanExtra("EXTRA_FROM_LAUNCH_ACTIVITY", false))) {
            break;
          }
          a(com.viber.voip.viberout.promotion.a.b);
        }
      } while (paramActivity.getClass() == WelcomeActivity.class);
    } while (!dl.a(str, new String[] { "com.viber.voip.action.CALL", "android.intent.action.CALL", "android.intent.action.CALL_BUTTON", "android.intent.action.VIEW" }));
    a(com.viber.voip.viberout.promotion.a.c);
    return c(paramActivity, paramIntent);
  }
  
  public void b(Context paramContext, int paramInt)
  {
    if ((paramInt == 12) || (paramInt == 15))
    {
      e("handleCallEnded, no-credit-like endReason: " + paramInt);
      this.j.a();
      a(new ae(this.j.c().c().b()), paramInt);
    }
    while ((paramInt != 13) && (paramInt != 16)) {
      return;
    }
    e("handleCallEnded, invalid-number-like endReason: " + paramInt);
    Intent localIntent = new Intent("com.viber.voip.action.CALL_DIALOG", Uri.fromParts("tel", this.j.c().c().b(), null));
    localIntent.putExtra("last_resolved", System.currentTimeMillis());
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
    this.j.a();
  }
  
  public void b(i parami)
  {
    j();
    e("checkActivityOnBackPressed, " + parami);
    this.k = h();
    if (parami.a) {
      a(com.viber.voip.viberout.promotion.a.d);
    }
  }
  
  public void b(String paramString)
  {
    long l1 = SystemClock.elapsedRealtime();
    long l2 = l1 - this.i;
    e("setLastOriginalNumber: " + paramString + ", elapsed since last time: " + l2);
    if (paramString == null) {
      return;
    }
    String str = hd.a(ViberApplication.getInstance(), PhoneNumberUtils.stripSeparators(paramString), null);
    if ((str != null) && (this.h != null) && (paramString.equals(str)) && (paramString.equals(this.h)) && (l2 < 2000L))
    {
      e("setLastOriginalNumber: ignoring substitution of " + this.g + " with " + paramString);
      return;
    }
    this.g = paramString;
    this.h = str;
    this.i = l1;
  }
  
  public void b(boolean paramBoolean)
  {
    e("setCallUiVisible: " + paramBoolean);
    this.n = paramBoolean;
  }
  
  public boolean b()
  {
    try
    {
      boolean bool = this.b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public String c(String paramString)
  {
    if (this.g == null) {}
    String str;
    do
    {
      return paramString;
      str = hd.a(ViberApplication.getInstance(), paramString, null);
    } while ((str == null) || (this.h == null));
    if (str.equals(this.h)) {
      return this.g;
    }
    e("ALERT! getOriginalNumber(): last number match failed: canonizedNumber:" + str + ", lastOriginalCanonizedNumber: " + this.h);
    return paramString;
  }
  
  public void c(i parami)
  {
    e("checkActivityOnStop, " + parami);
    if (h() - this.k > 1000L) {
      i();
    }
  }
  
  public void d()
  {
    if (!ViberApplication.preferences().b("vo_contact_list_switched_to_all", false))
    {
      e("switchContactListToAllContacts, all contacts switch not yet made, switching contacts filter to 0");
      ViberApplication.preferences().a("vo_contact_list_switched_to_all", true);
      ViberApplication.preferences().a("contacts_filter", 1);
      return;
    }
    e("switchContactListToAllContacts, all contacts switch already made.");
  }
  
  public void d(i parami)
  {
    e("checkActivityOnStart, " + parami);
    j();
    if (this.l)
    {
      this.l = false;
      a(com.viber.voip.viberout.promotion.a.b);
    }
  }
  
  public int e()
  {
    return ViberApplication.preferences().b("vo_exposure", 1);
  }
  
  public a f()
  {
    return this.f;
  }
  
  public void onViberOutGroup(int paramInt)
  {
    e("onViberOutGroup: " + paramInt);
    a(paramInt);
  }
  
  public void onViberOutState(int paramInt)
  {
    boolean bool1 = true;
    int i1;
    boolean bool2;
    boolean bool3;
    switch (paramInt)
    {
    default: 
      i1 = 0;
      bool2 = false;
      bool3 = false;
    }
    for (;;)
    {
      ViberApplication.preferences().a("VIBER_OUT_STATE", paramInt);
      a(bool3);
      if (bool3) {
        if (e() != 2) {
          break label152;
        }
      }
      for (;;)
      {
        this.d.a(bool2, bool1);
        if (i1 != 0) {
          a(com.viber.voip.viberout.promotion.a.g);
        }
        this.f.b(bool1);
        return;
        i1 = bool1;
        bool3 = bool1;
        bool2 = false;
        break;
        if (ViberApplication.preferences().b("VIBER_OUT_STATE", -1) != 0) {
          break label157;
        }
        e("Transition VO_TRIAL_CALL_SPLASH -> VO_TRIAL_SPLASH, considering as trial-ended event");
        i1 = bool1;
        bool3 = bool1;
        bool2 = false;
        break;
        bool2 = bool1;
        bool3 = bool1;
        i1 = 0;
        break;
        label152:
        bool1 = false;
      }
      label157:
      bool3 = bool1;
      i1 = 0;
      bool2 = false;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.e
 * JD-Core Version:    0.7.0.1
 */