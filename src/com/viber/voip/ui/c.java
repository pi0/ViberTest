package com.viber.voip.ui;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.DisplayMetrics;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class c
  implements Runnable
{
  c(a parama) {}
  
  public void run()
  {
    DisplayMetrics localDisplayMetrics = a.a(this.a).getResources().getDisplayMetrics();
    if ((localDisplayMetrics.widthPixels == a.b(this.a)) && (localDisplayMetrics.heightPixels == a.c(this.a)))
    {
      if (a.c() - a.d(this.a) >= 3000L)
      {
        int i;
        if (localDisplayMetrics.widthPixels < localDisplayMetrics.heightPixels)
        {
          i = 1;
          if (i == 0) {
            break label184;
          }
          if (a.e(this.a) != a.f(this.a))
          {
            a.b(this.a, a.f(this.a));
            ViberApplication.preferences().a("PORT_AVAILABLE_SCREEN_WIDTH", a.e(this.a));
          }
          a.a(this.a, "Available width in portrait: " + a.e(this.a) + ", screen:" + localDisplayMetrics.widthPixels);
        }
        for (;;)
        {
          a.h(this.a);
          return;
          i = 0;
          break;
          label184:
          if (a.g(this.a) != a.f(this.a))
          {
            a.c(this.a, a.f(this.a));
            ViberApplication.preferences().a("LAND_AVAILABLE_SCREEN_WIDTH", a.g(this.a));
          }
          a.a(this.a, "Available width in landscape: " + a.g(this.a) + ", screen:" + localDisplayMetrics.widthPixels);
        }
      }
      a.j(this.a).postDelayed(a.i(this.a), 200L);
      return;
    }
    a.k(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.c
 * JD-Core Version:    0.7.0.1
 */