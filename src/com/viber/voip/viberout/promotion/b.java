package com.viber.voip.viberout.promotion;

import android.content.Context;
import android.content.Intent;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

public class b
  extends com.android.a.a.b
{
  private static final String d = b.class.getSimpleName();
  f a = new f(this);
  d b = new d(this);
  e c = new e(this);
  private boolean e;
  private boolean f;
  
  public b()
  {
    super("ViberOutTrialSM");
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    boolean bool1 = ViberApplication.preferences().b("vo_intro_splash_shown", false);
    boolean bool2 = false;
    if (bool1)
    {
      b(paramString1, paramString2);
      bool2 = true;
    }
    return bool2;
  }
  
  private boolean b(String paramString1, String paramString2)
  {
    if (!ViberApplication.preferences().b(paramString2, false))
    {
      b(paramString1);
      ViberApplication.preferences().a(paramString2, true);
      return true;
    }
    return false;
  }
  
  private int c(String paramString)
  {
    int i = 1 + ViberApplication.preferences().b(paramString, 0);
    a("countEntry pref:" + paramString + " count: " + i);
    if (i <= 5) {
      ViberApplication.preferences().a(paramString, i);
    }
    return i;
  }
  
  private void d(String paramString)
  {
    int i = ViberApplication.preferences().b(paramString, 0);
    if (i > 0)
    {
      int j = i - 1;
      ViberApplication.preferences().a(paramString, j);
    }
  }
  
  private int e(String paramString)
  {
    return ViberApplication.preferences().b(paramString, 0);
  }
  
  private boolean e()
  {
    if (!ViberApplication.preferences().b("vo_intro_splash_shown", false))
    {
      if (this.f) {
        b("com.viber.voip.action.vo_promotion_free_call");
      }
      for (;;)
      {
        ViberApplication.preferences().a("vo_intro_splash_shown", true);
        return true;
        b("com.viber.voip.action.vo_promotion_no_free_call");
      }
    }
    return false;
  }
  
  public void a(a parama)
  {
    a("sendMessage: " + parama);
    b(parama.ordinal());
  }
  
  protected void a(String paramString)
  {
    com.viber.voip.billing.a.a(d, paramString);
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    a("onViberOutAvailable isTrialCallAvailable: " + paramBoolean1 + ", isUpgrade:" + paramBoolean2);
    this.f = paramBoolean1;
    this.e = paramBoolean2;
    a(a.a);
  }
  
  public void b(String paramString)
  {
    a("showSplashScreen " + paramString);
    Intent localIntent = new Intent(paramString);
    localIntent.setFlags(268435456);
    ViberApplication.getInstance().getApplicationContext().startActivity(localIntent);
  }
  
  public void d()
  {
    a(this.a);
    a(this.b);
    a(this.c, this.b);
    b(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.promotion.b
 * JD-Core Version:    0.7.0.1
 */