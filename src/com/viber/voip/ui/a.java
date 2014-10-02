package com.viber.voip.ui;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.ui.dt;
import com.viber.voip.settings.l;

public class a
{
  private static final String j = a.class.getSimpleName();
  private Context a;
  private Handler b = new Handler();
  private int c;
  private int d;
  private long e;
  private int f;
  private int g;
  private int h;
  private Runnable i = new c(this);
  
  public a(Context paramContext)
  {
    this.a = paramContext;
    this.c = ViberApplication.preferences().b("PORT_AVAILABLE_SCREEN_WIDTH", 0);
    this.d = ViberApplication.preferences().b("LAND_AVAILABLE_SCREEN_WIDTH", 0);
    DisplayMetrics localDisplayMetrics;
    if (this.c == 0)
    {
      localDisplayMetrics = this.a.getResources().getDisplayMetrics();
      if (localDisplayMetrics.widthPixels >= localDisplayMetrics.heightPixels) {
        break label176;
      }
      this.c = localDisplayMetrics.widthPixels;
    }
    for (this.d = localDisplayMetrics.heightPixels;; this.d = localDisplayMetrics.widthPixels)
    {
      ViberApplication.preferences().a("PORT_AVAILABLE_SCREEN_WIDTH", this.c);
      ViberApplication.preferences().a("LAND_AVAILABLE_SCREEN_WIDTH", this.d);
      a("initialized, port:" + this.c + ", land:" + this.d);
      return;
      label176:
      this.c = localDisplayMetrics.heightPixels;
    }
  }
  
  private void a(int paramInt)
  {
    this.h = paramInt;
    d();
    this.i.run();
  }
  
  private void a(String paramString) {}
  
  private void d()
  {
    this.e = f();
    DisplayMetrics localDisplayMetrics = this.a.getResources().getDisplayMetrics();
    this.f = localDisplayMetrics.widthPixels;
    this.g = localDisplayMetrics.heightPixels;
  }
  
  private void e()
  {
    this.b.removeCallbacks(this.i);
  }
  
  private static long f()
  {
    return SystemClock.elapsedRealtime();
  }
  
  public int a()
  {
    return this.c;
  }
  
  public void a(dt paramdt)
  {
    e();
    paramdt.setPositioningListener(new b(this));
  }
  
  public int b()
  {
    return this.d;
  }
  
  public void b(dt paramdt)
  {
    paramdt.setPositioningListener(null);
    e();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.a
 * JD-Core Version:    0.7.0.1
 */