package com.viber.voip.stickers;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.util.SparseArray;
import android.util.TypedValue;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.stickers.c.d;
import com.viber.voip.stickers.c.e;
import com.viber.voip.util.gl;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class an
{
  public static final String a = an.class.getSimpleName();
  public static final int b;
  public static final float c;
  public static final float d;
  public static final float e;
  public static final float[] f;
  public static final float[] g;
  public static final float[] h;
  public static int i;
  public static int j;
  public static int k;
  public static int l;
  public static int m;
  public static int n;
  public static float o;
  private static SparseArray<Float> p;
  private static com.viber.voip.ui.a q;
  private static final int r;
  private static int s;
  private static int t;
  private static int u;
  private static final int[] v;
  private static final int[] w;
  private static final int[] x;
  private static Float y;
  
  static
  {
    ViberApplication localViberApplication;
    if (!ViberApplication.isTablet())
    {
      b = 5;
      d = 0.15F;
      c = 0.03F;
      p = new SparseArray();
      localViberApplication = ViberApplication.getInstance();
      if (localViberApplication != null) {
        break label417;
      }
      e = 0.18F;
      label51:
      a("PORT_GAP_PERCENT : " + c);
      a("LAND_GAP_PERCENT : 0.016");
      a("PORT_CELL_PERCENT: " + d);
      a("LAND_CELL_PERCENT: 0.08");
      a("LIST_CELL_PERCENT: " + e);
      float[] arrayOfFloat1 = new float[3];
      arrayOfFloat1[0] = (1.0F * d + 0.0F * c);
      arrayOfFloat1[1] = (2.0F * d + 1.0F * c);
      arrayOfFloat1[2] = (3.0F * d + 2.0F * c);
      f = arrayOfFloat1;
      g = new float[] { 0.08F, 0.176F, 0.272F };
      float[] arrayOfFloat2 = new float[3];
      arrayOfFloat2[0] = (1.0F * e + 0.0F * c);
      arrayOfFloat2[1] = (2.0F * e + 1.0F * c);
      arrayOfFloat2[2] = (3.0F * e + 2.0F * c);
      h = arrayOfFloat2;
      if (gl.e()) {
        break label446;
      }
    }
    label417:
    label446:
    for (int i1 = 2;; i1 = 4)
    {
      r = i1;
      s = 50;
      t = 2;
      u = 2;
      v = new int[] { 144, 130, 100, 86, 80, 65, 60, 50, 43, 40 };
      w = new int[] { 30, 45, 60 };
      x = new int[] { 30, 40, 60, 80, 120 };
      return;
      b = 10;
      d = 0.08F;
      c = 0.016F;
      break;
      TypedValue localTypedValue = new TypedValue();
      localViberApplication.getResources().getValue(2131362144, localTypedValue, true);
      e = localTypedValue.getFloat();
      break label51;
    }
  }
  
  private static float a(Context paramContext)
  {
    int i1 = 4 * (a(t) * b(u)) * s * r / 4;
    int i2 = b(paramContext);
    return (float)Math.sqrt(i1 / i2);
  }
  
  static float a(d paramd, Iterable<com.viber.voip.stickers.c.a> paramIterable)
  {
    a("calculateThumbAxisSchrinkFactor, packageId:" + paramd.e());
    int i1 = b(ViberApplication.getInstance().getApplicationContext());
    a("Memory budget for sticker thumbs: " + i1);
    Iterator localIterator = paramIterable.iterator();
    int i2 = 0;
    while (localIterator.hasNext())
    {
      com.viber.voip.stickers.c.a locala = (com.viber.voip.stickers.c.a)localIterator.next();
      i2 += 4 * (locala.p * locala.q);
    }
    int i3 = i2 * r / 4;
    int i4 = i2 * 2;
    a("Total memory (that would be) required for stickers: " + i4 + " / " + i2 + " / " + i3);
    float f1 = i3 / i1;
    a("Thumb schrink factor: " + f1);
    float f2 = (float)Math.sqrt(f1);
    a("Thumb schrink factor for one dimension: " + f2);
    return f2;
  }
  
  public static final int a()
  {
    return v[(-1 + v.length)];
  }
  
  public static int a(int paramInt)
  {
    return (int)(0.5F + h[(paramInt - 1)] * i);
  }
  
  private static int a(int paramInt, int[] paramArrayOfInt)
  {
    int i1 = 0;
    a("Ideal resolution : " + paramInt + " from allResolutions : " + Arrays.toString(paramArrayOfInt));
    int i2 = 0;
    int i3 = 2147483647;
    while (i1 < paramArrayOfInt.length)
    {
      int i4 = paramArrayOfInt[i1];
      if ((i4 < i3) && (i4 >= paramInt)) {
        i3 = i4;
      }
      if (i2 < i4) {
        i2 = i4;
      }
      i1++;
    }
    if (i3 == 2147483647) {
      a("Ideal resolution (" + paramInt + ") is above the maximum available resolution (" + i2 + "), taking " + i2);
    }
    for (;;)
    {
      a("Best available resolution: " + i2);
      return i2;
      i2 = i3;
    }
  }
  
  public static int a(boolean paramBoolean)
  {
    if (paramBoolean) {
      return k;
    }
    return j;
  }
  
  public static void a(Context paramContext, com.viber.voip.ui.a parama)
  {
    a("staticSetup");
    i = h.a(paramContext)[0];
    q = parama;
    n = h.a(15.0F);
    o = a(paramContext);
    a("default axis schrink factor: " + o);
    j = d();
    k = 300;
    l = a(paramContext.getResources().getDimensionPixelSize(2131362227), w);
    m = a(paramContext.getResources().getDimensionPixelSize(2131362228), x);
  }
  
  public static void a(com.viber.voip.stickers.c.a parama, int paramInt1, int paramInt2, int paramInt3)
  {
    float f1 = paramInt1 / paramInt3;
    float f2 = paramInt2 / paramInt3;
    parama.j = Math.round(f1);
    parama.k = Math.round(f2);
    if (parama.j > 3)
    {
      a("invalid colspan calculated!!! w/r: " + paramInt1 + "/" + paramInt3 + " = " + f1);
      parama.j = 3;
      if (parama.k <= 2) {
        break label278;
      }
      a("invalid colspan calculated!!! h/r: " + paramInt2 + "/" + paramInt3 + " = " + f2);
      parama.k = 2;
    }
    for (;;)
    {
      a("updateSpansFromBitmapSize id:" + parama.b + ", bitmap:" + paramInt1 + "x" + paramInt2 + ", cells:" + parama.j + "x" + parama.k);
      return;
      if (parama.j != 0) {
        break;
      }
      a("colspan is 0!!! w/r: " + paramInt1 + "/" + paramInt3 + " = " + f1);
      parama.j = 1;
      break;
      label278:
      if (parama.k == 0)
      {
        a("colspan is 0!!! h/r: " + paramInt1 + "/" + paramInt3 + " = " + f1);
        parama.k = 1;
      }
    }
  }
  
  private static void a(String paramString) {}
  
  public static void a(List<d> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      a("initThumbAxisSchrinkFactorsFromLoadedPackages packageId:" + locald.e() + " factor:" + locald.l());
      if ((locald.h()) && (locald.l() != 0.0F)) {
        p.put(locald.e(), Float.valueOf(locald.l()));
      }
    }
  }
  
  public static boolean a(e parame, Iterable<com.viber.voip.stickers.c.a> paramIterable)
  {
    float f1 = a(parame, paramIterable);
    if (parame.l() == f1)
    {
      a("updateThumbSizes package " + parame.e() + " thumbAxisSchrinkFactor: " + f1 + " (unchanged)");
      return false;
    }
    a("updateThumbSizes package " + parame.e() + " thumbAxisSchrinkFactor: " + f1 + " (updated)");
    parame.a(f1);
    p.put(parame.e(), Float.valueOf(f1));
    Iterator localIterator = paramIterable.iterator();
    int i1 = 0;
    while (localIterator.hasNext())
    {
      com.viber.voip.stickers.c.a locala = (com.viber.voip.stickers.c.a)localIterator.next();
      locala.c();
      i1 += locala.r * locala.s * r;
    }
    a("updateThumbSizes package " + parame.e() + " memory required for sticker thumbs: " + i1);
    return true;
  }
  
  public static int b()
  {
    return q.a();
  }
  
  public static int b(int paramInt)
  {
    return (int)(0.5F + h[(paramInt - 1)] * i);
  }
  
  private static int b(Context paramContext)
  {
    return (int)(0.007813F * (1048576 * ((ActivityManager)paramContext.getSystemService("activity")).getMemoryClass()));
  }
  
  public static float c(int paramInt)
  {
    Float localFloat = (Float)p.get(paramInt);
    if (localFloat == null) {
      return 0.0F;
    }
    return localFloat.floatValue();
  }
  
  public static int c()
  {
    float f1 = q.b();
    if (ViberApplication.isTablet())
    {
      if (y == null) {
        y = Float.valueOf(gl.g(ViberApplication.getInstance()));
      }
      f1 *= y.floatValue();
    }
    return (int)f1;
  }
  
  private static int d()
  {
    return a((int)(0.5D + b() * e), v);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.an
 * JD-Core Version:    0.7.0.1
 */