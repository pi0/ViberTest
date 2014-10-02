package com.viber.voip.backgrounds;

import android.content.Context;
import android.graphics.Point;
import android.view.WindowManager;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.gl;

public class n
{
  public static final String a = n.class.getSimpleName();
  public static int b;
  public static int c;
  public static int d;
  public static int e;
  public static int f;
  private static final int[] g = { 1920, 1280, 1136, 960, 800, 540, 480, 320 };
  
  private static int a()
  {
    int i = 0;
    int j = c;
    a("Ideal resolution (portrait): " + j);
    int k = 0;
    int m = 2147483647;
    while (i < g.length)
    {
      int n = g[i];
      if ((n < m) && (n >= j)) {
        m = n;
      }
      if (k < n) {
        k = n;
      }
      i++;
    }
    if (m == 2147483647) {
      a("Ideal resolution (" + j + ") is above the maximum available resolution (" + k + "), taking " + k);
    }
    for (;;)
    {
      a("Best available resolution: " + k);
      return k;
      k = m;
    }
  }
  
  public static void a(Context paramContext)
  {
    int[] arrayOfInt = h.a(paramContext);
    d = arrayOfInt[0];
    c = arrayOfInt[1];
    e = h.a(3.0F);
    f = d / 3 - 2 * e;
    b = a();
  }
  
  private static void a(String paramString) {}
  
  public static int b(Context paramContext)
  {
    if (!gl.e(paramContext)) {
      return d / 3 - e;
    }
    if (gl.d()) {}
    for (int i = h.b(((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay()).x / 5;; i = c / 5) {
      return i - e;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.n
 * JD-Core Version:    0.7.0.1
 */