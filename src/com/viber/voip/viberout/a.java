package com.viber.voip.viberout;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.u;
import com.viber.voip.settings.l;
import com.viber.voip.viberout.promotion.ui.VOGrowPromotionScreen;
import com.viber.voip.viberout.promotion.ui.VOPromotionScreen;

public class a
{
  private static final String a = a.class.getSimpleName();
  private boolean b;
  private int c = ViberApplication.preferences().b("PREF_VO_GROW_SPLASH_COUNT", 0);
  private long d;
  private long e;
  private long f;
  private boolean g;
  
  public a(e parame)
  {
    a(ViberApplication.preferences().b("GROW_VIBER_OUT_DEBUG_ENABLED", false));
    if (ViberApplication.preferences().b("VIBER_OUT_ENABLED", false))
    {
      int i = parame.e();
      boolean bool = false;
      if (i == 2) {
        bool = true;
      }
      b(bool);
    }
  }
  
  private void a(d paramd)
  {
    b("checkPromoGrowUpgradeConditions");
    if (ViberApplication.preferences().b("PREF_VO_GROW_UPGRADE_SPLASH_TIME", 0L) != 0L)
    {
      paramd.a(false);
      return;
    }
    ViberApplication.getInstance().getRecentCallsManager().a(5, new c(this, paramd));
  }
  
  private static void b(String paramString)
  {
    com.viber.voip.billing.a.a(a, paramString);
  }
  
  private boolean c()
  {
    boolean bool1 = d();
    boolean bool2 = e();
    b("checkRestOfPromoGrowUpgradeConditions: introSplashShown:" + bool1 + ", contactsSplashShown:" + bool2);
    if ((!bool1) || (!bool2)) {}
    long l;
    do
    {
      return false;
      l = System.currentTimeMillis() - ViberApplication.preferences().b("vo_activation_time", 9223372036854775807L);
      b("checkRestOfPromoGrowUpgradeConditions: timeSinceVOActivation: " + l);
    } while (l < this.f);
    return true;
  }
  
  private boolean d()
  {
    return (ViberApplication.preferences().b("vo_intro_splash_shown", false)) && ((!VOPromotionScreen.a()) || (VOPromotionScreen.c()));
  }
  
  private boolean e()
  {
    return (ViberApplication.preferences().b("vo_contacts_splash_shown", false)) && ((!VOPromotionScreen.b()) || (VOPromotionScreen.d()));
  }
  
  private void f()
  {
    VOGrowPromotionScreen.a(ViberApplication.getInstance());
    ViberApplication.preferences().a("PREF_VO_GROW_UPGRADE_SPLASH_TIME", System.currentTimeMillis());
  }
  
  public void a(boolean paramBoolean)
  {
    ViberApplication.preferences().a("GROW_VIBER_OUT_DEBUG_ENABLED", paramBoolean);
    this.g = paramBoolean;
    if (!paramBoolean)
    {
      this.d = 259200000L;
      this.e = 86400000L;
    }
    for (this.f = 86400000L;; this.f = 60000L)
    {
      b("debug: " + this.g);
      b("mMinTimeSinceVOActivation: " + this.d);
      b("mMinTimeSinceLastGrowSplash: " + this.e);
      b("mMinTimeSinceVOActivationForUpgrade: " + this.f);
      return;
      this.d = 60000L;
      this.e = 30000L;
    }
  }
  
  public boolean a()
  {
    return this.g;
  }
  
  public void b()
  {
    b("onHomeActivityOpened()");
    if ((this.b) && (e.c().b())) {
      a(new b(this));
    }
  }
  
  public void b(boolean paramBoolean)
  {
    try
    {
      int i = ViberApplication.getInstance().getPackageManager().getPackageInfo(ViberApplication.getInstance().getPackageName(), 0).versionCode;
      b("onViberOutEnabled, VersionCode: " + i);
      b("onViberOutEnabled, Upgrade splash forcibly disabled");
      paramBoolean = false;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        localNameNotFoundException.printStackTrace();
      }
    }
    b("onViberOutEnabled, upgrade: " + paramBoolean + ", mGrowSplashCount:" + this.c);
    this.b = paramBoolean;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.a
 * JD-Core Version:    0.7.0.1
 */