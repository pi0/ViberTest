package com.viber.voip.f;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.widget.FrameLayout;
import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.a.t;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.settings.l;
import com.viber.voip.settings.m;
import com.viber.voip.util.fq;
import com.viber.voip.util.ft;
import com.viber.voip.util.fu;
import java.io.File;
import java.util.regex.Pattern;

public class j
  extends PhoneControllerDelegateAdapter
  implements i, m, fu
{
  private a a;
  private f b;
  private boolean c;
  private boolean d;
  private int e;
  private long f;
  private boolean g;
  private boolean h = true;
  private t i = new t();
  
  public j()
  {
    l locall = ViberApplication.preferences();
    a(locall);
    b(locall);
    c(locall);
    d(locall);
    locall.a(this);
    if (this.e > 0)
    {
      ViberApplication localViberApplication = ViberApplication.getInstance();
      ft.a(localViberApplication).a(this);
      localViberApplication.getPhoneController(false).registerDelegate(this, dc.a(dk.a));
    }
  }
  
  @TargetApi(9)
  private static long a(PackageManager paramPackageManager, String paramString)
  {
    return paramPackageManager.getPackageInfo(paramString, 0).firstInstallTime;
  }
  
  private void a(l paraml)
  {
    this.c = paraml.b("PREF_IS_VIBER_UPGRADED", false);
  }
  
  private void b(l paraml)
  {
    this.d = paraml.b("PREF_SHOW_COMPOSE_GROUP_PROMO", true);
  }
  
  private void c(l paraml)
  {
    this.e = paraml.b("PREF_SHOW_DESKTOP_PROMO_COUNT", 3);
  }
  
  private void d(l paraml)
  {
    this.f = paraml.b("PREF_SHOW_DESKTOP_PROMO_LAST_DISMISS", 0L);
  }
  
  private boolean f()
  {
    return System.currentTimeMillis() - this.f > 604800000L;
  }
  
  private static boolean g()
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    for (long l1 = 0L;; l1 = l2)
    {
      try
      {
        if (Build.VERSION.SDK_INT <= 8) {
          break label44;
        }
        long l3 = a(localViberApplication.getPackageManager(), localViberApplication.getPackageName());
        l1 = l3;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        label30:
        label44:
        long l2;
        break label30;
      }
      if (System.currentTimeMillis() - l1 <= 604800000L) {
        break;
      }
      return true;
      l2 = new File(localViberApplication.getPackageManager().getApplicationInfo(localViberApplication.getPackageName(), 0).sourceDir).lastModified();
    }
    return false;
  }
  
  public void a()
  {
    bc.a().a(this.i.d());
    l locall = ViberApplication.preferences();
    this.e = 0;
    locall.a("PREF_SHOW_DESKTOP_PROMO_COUNT", 0);
  }
  
  public void a(Context paramContext, FrameLayout paramFrameLayout, h paramh)
  {
    this.b = new f(paramContext, paramFrameLayout, paramh, this);
  }
  
  public void a(boolean paramBoolean)
  {
    if (!this.h) {}
    boolean bool;
    do
    {
      return;
      bool = d();
      if ((bool) && (paramBoolean) && (this.b != null) && (!this.b.c()))
      {
        bc.a().a(this.i.c());
        this.b.a();
        return;
      }
    } while (((bool) && (paramBoolean)) || (this.b == null) || (!this.b.c()));
    this.b.b();
  }
  
  public boolean a(Activity paramActivity, e parame)
  {
    boolean bool1 = c();
    boolean bool2 = false;
    if (bool1)
    {
      l locall = ViberApplication.preferences();
      this.d = false;
      locall.a("PREF_SHOW_COMPOSE_GROUP_PROMO", false);
      this.a = new a(paramActivity, parame);
      this.a.a();
      bool2 = true;
    }
    return bool2;
  }
  
  public void b()
  {
    bc.a().a(this.i.e());
    l locall1 = ViberApplication.preferences();
    int j = -1 + this.e;
    this.e = j;
    locall1.a("PREF_SHOW_DESKTOP_PROMO_COUNT", j);
    l locall2 = ViberApplication.preferences();
    long l = System.currentTimeMillis();
    this.f = l;
    locall2.a("PREF_SHOW_DESKTOP_PROMO_LAST_DISMISS", l);
  }
  
  public void b(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.b != null) && (!this.b.c())) {
      this.b.a();
    }
    while ((paramBoolean) || (this.b == null) || (!this.b.c())) {
      return;
    }
    this.b.b();
  }
  
  public void backgroundDataChanged(boolean paramBoolean) {}
  
  public void c(boolean paramBoolean)
  {
    this.h = paramBoolean;
    if ((!this.h) && (this.b != null) && (this.b.c())) {
      this.b.b();
    }
  }
  
  public boolean c()
  {
    return (this.d) && (this.c);
  }
  
  public void connectivityChanged(int paramInt1, int paramInt2)
  {
    if (1 == paramInt1)
    {
      this.g = true;
      a(true);
      return;
    }
    this.g = false;
  }
  
  public boolean d()
  {
    return (this.e > 0) && (f()) && (this.g) && (((!this.c) && (g())) || (this.c));
  }
  
  public boolean e()
  {
    if ((this.a != null) && (this.a.c()))
    {
      this.a.b();
      return true;
    }
    return false;
  }
  
  public boolean onSecondaryRegistered(long paramLong, int paramInt1, int paramInt2, int paramInt3)
  {
    ViberApplication.preferences().a("PREF_SHOW_DESKTOP_PROMO_COUNT", 0);
    a(false);
    return false;
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    if ("PREF_IS_VIBER_UPGRADED".equals(paramString)) {
      a(paraml);
    }
    do
    {
      do
      {
        return;
        if ("PREF_SHOW_COMPOSE_GROUP_PROMO".equals(paramString))
        {
          b(paraml);
          return;
        }
        if (!"PREF_SHOW_DESKTOP_PROMO_COUNT".equals(paramString)) {
          break;
        }
        c(paraml);
      } while (this.e != 0);
      ft.a(ViberApplication.getInstance()).b(this);
      return;
    } while (!"PREF_SHOW_DESKTOP_PROMO_LAST_DISMISS".equals(paramString));
    d(paraml);
  }
  
  public boolean onTextReceived(long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3)
  {
    if (("viber".equals(paramString1.toLowerCase())) && (paramString2.matches(fq.n.pattern())))
    {
      ViberApplication.preferences().a("PREF_SHOW_DESKTOP_PROMO_COUNT", 0);
      a(false);
    }
    return false;
  }
  
  public void wifiConnectivityChanged() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.f.j
 * JD-Core Version:    0.7.0.1
 */