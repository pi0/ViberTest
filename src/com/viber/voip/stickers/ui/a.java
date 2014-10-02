package com.viber.voip.stickers.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.viber.voip.ViberApplication;
import com.viber.voip.stickers.an;
import com.viber.voip.stickers.p;
import com.viber.voip.util.gl;

public class a
{
  private final int a;
  private final int b;
  private final float c;
  private final boolean d;
  private final boolean e;
  
  public a(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    boolean bool;
    com.viber.voip.ui.a locala;
    int i;
    label52:
    float f1;
    if (localDisplayMetrics.heightPixels > localDisplayMetrics.widthPixels)
    {
      bool = true;
      this.d = bool;
      locala = ViberApplication.getInstance().getAvailableScreenWidthMeasurer();
      if (!this.d) {
        break label150;
      }
      i = locala.a();
      this.e = ViberApplication.isTablet();
      if ((this.e) && (!this.d)) {
        i = (int)(i * gl.g(paramContext));
      }
      if (!a()) {
        break label160;
      }
      f1 = an.d;
      label96:
      if (!a()) {
        break label167;
      }
    }
    label150:
    label160:
    label167:
    for (float f2 = an.c;; f2 = 0.016F)
    {
      float f3 = f2 * i;
      this.c = (f3 + f1 * i);
      this.a = ((int)(0.5F + f3));
      this.b = 0;
      return;
      bool = false;
      break;
      i = locala.b();
      break label52;
      f1 = 0.08F;
      break label96;
    }
  }
  
  public int a(Context paramContext, p paramp, boolean paramBoolean)
  {
    com.viber.voip.stickers.c.a[] arrayOfa = paramp.a;
    int i = arrayOfa.length;
    int j = 0;
    int k = 0;
    int n;
    if (j < i)
    {
      com.viber.voip.stickers.c.a locala = arrayOfa[j];
      n = a(locala) + d(locala);
      if (n <= k) {
        break label88;
      }
    }
    for (;;)
    {
      j++;
      k = n;
      break;
      int m = k + c();
      if (paramBoolean) {
        m += c();
      }
      return m;
      label88:
      n = k;
    }
  }
  
  public int a(com.viber.voip.stickers.c.a parama)
  {
    if (a()) {}
    for (int i = parama.g;; i = parama.i) {
      return (int)(0.5F + i * this.c);
    }
  }
  
  public boolean a()
  {
    return this.d;
  }
  
  public int b()
  {
    return this.b;
  }
  
  public int b(com.viber.voip.stickers.c.a parama)
  {
    if (a()) {}
    for (int i = parama.f;; i = parama.h) {
      return (int)(0.5F + i * this.c);
    }
  }
  
  public int c()
  {
    return this.a;
  }
  
  public int c(com.viber.voip.stickers.c.a parama)
  {
    if (a()) {
      return parama.l;
    }
    return parama.n;
  }
  
  public int d(com.viber.voip.stickers.c.a parama)
  {
    if (a()) {
      return parama.m;
    }
    return parama.o;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.ui.a
 * JD-Core Version:    0.7.0.1
 */