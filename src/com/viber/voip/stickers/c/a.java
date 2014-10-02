package com.viber.voip.stickers.c;

import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.stickers.an;
import com.viber.voip.stickers.b.n;
import com.viber.voip.stickers.ba;
import com.viber.voip.stickers.bb;
import com.viber.voip.stickers.r;
import com.viber.voip.util.bi;
import com.viber.voip.util.bk;
import com.viber.voip.w;
import java.io.File;
import java.io.IOException;
import java.util.Formatter;
import java.util.Locale;

public class a
  implements Comparable<a>
{
  public static final String a = a.class.getSimpleName();
  private static final String y = "r" + an.j + "_";
  private String A = ".png";
  private File B;
  private int C;
  private String D;
  private String E;
  private String F;
  private String G;
  private String H;
  private String I;
  private String J;
  private int K;
  private boolean L;
  private boolean M;
  public int b;
  public c c;
  public int d;
  public int e;
  public int f;
  public int g;
  public int h;
  public int i;
  public int j;
  public int k;
  public int l;
  public int m;
  public int n;
  public int o;
  public int p;
  public int q;
  public int r;
  public int s;
  public int t;
  public String u;
  public String v;
  public String w;
  public String x;
  private String z;
  
  public a(int paramInt1, int paramInt2)
  {
    this(paramInt1, 0, 0, 2, 2, false, false, paramInt2);
  }
  
  public a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    this.K = paramInt7;
    a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
  }
  
  public a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean1, boolean paramBoolean2, int paramInt6)
  {
    this(paramInt1, 0, 0, 2, 2, false, false, paramInt6, false);
  }
  
  public a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean1, boolean paramBoolean2, int paramInt6, boolean paramBoolean3)
  {
    c(paramBoolean1);
    d(paramBoolean2);
    b(paramBoolean3);
    a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6);
  }
  
  private static String a(int paramInt)
  {
    Formatter localFormatter = new Formatter();
    Locale localLocale = Locale.US;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    String str = localFormatter.format(localLocale, "%08d", arrayOfObject).toString();
    localFormatter.close();
    return str;
  }
  
  private String a(int paramInt1, int paramInt2)
  {
    return w.w + "scaled_unknown_frame_" + "" + paramInt1 + "x" + paramInt2 + ".png";
  }
  
  private String a(String paramString, int paramInt1, int paramInt2)
  {
    return this.B.getAbsolutePath() + "/" + y + this.z + "_scaled" + paramString + "_" + "" + paramInt1 + "x" + paramInt2 + ".png";
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.b = paramInt1;
    this.z = a(paramInt1);
    this.d = paramInt2;
    this.e = paramInt3;
    this.t = paramInt6;
    if ((!e()) && (paramInt4 == 0))
    {
      paramInt5 = 2;
      paramInt4 = 2;
    }
    this.j = paramInt4;
    this.k = paramInt5;
    if (paramInt1 < 500) {
      this.c = c.a;
    }
    for (;;)
    {
      this.C = com.viber.voip.stickers.b.h.d(paramInt1);
      this.D = (w.w + this.C + "/");
      this.B = new File(this.D);
      m();
      b();
      c();
      h();
      return;
      if (paramInt1 < 1000) {
        this.c = c.b;
      } else {
        this.c = c.c;
      }
    }
  }
  
  public static void a(ba paramba)
  {
    throw new IllegalArgumentException("Invalid size: " + paramba);
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private String b(int paramInt1, int paramInt2)
  {
    return w.w + "scaled_unknown_thumb_frame_" + "" + paramInt1 + "x" + paramInt2 + ".png";
  }
  
  private void m()
  {
    String str;
    if (j())
    {
      str = ".svg";
      this.A = str;
      if (!e()) {
        break label210;
      }
      if (!k()) {
        break label114;
      }
    }
    label114:
    for (this.u = ("stickers/" + this.z + this.A);; this.u = (this.D + y + this.z + "_orig" + this.A))
    {
      if (!l()) {
        break label163;
      }
      this.v = ("stickers/" + this.z + "_frame" + this.A);
      return;
      str = ".png";
      break;
    }
    label163:
    this.v = (this.D + y + this.z + "_orig_frame" + this.A);
    return;
    label210:
    this.u = (this.D + y + this.z + "_orig" + this.A);
    this.v = "stickers/unknown_frame.png";
  }
  
  public int a(a parama)
  {
    return this.b - parama.b;
  }
  
  public String a(boolean paramBoolean1, boolean paramBoolean2, ba paramba)
  {
    switch (b.a[paramba.ordinal()])
    {
    default: 
      a(paramba);
      return null;
    case 1: 
      if (paramBoolean2)
      {
        if (paramBoolean1) {
          return this.F;
        }
        return this.E;
      }
      if (paramBoolean1) {
        return this.H;
      }
      return this.G;
    case 2: 
      if (paramBoolean1) {
        return this.J;
      }
      return this.I;
    }
    if (paramBoolean1) {
      return this.x;
    }
    return this.w;
  }
  
  public void a()
  {
    bb localbb;
    com.viber.voip.stickers.f.a locala;
    if (j())
    {
      localbb = r.a().e();
      locala = localbb.a(this.u);
    }
    for (;;)
    {
      try
      {
        int[] arrayOfInt = localbb.a(locala);
        if (arrayOfInt == null) {
          continue;
        }
        localn = new n(arrayOfInt[0], arrayOfInt[1]);
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        localn = null;
        continue;
      }
      if (localn == null) {
        break;
      }
      an.a(this, localn.a(), localn.b(), an.a(j()));
      b();
      c();
      return;
      BitmapFactory.Options localOptions = com.viber.voip.messages.extras.image.h.b(ViberApplication.getInstance(), Uri.fromFile(new File(this.u)));
      if ((localOptions.outWidth != 0) && (localOptions.outHeight == 0)) {}
      n localn = new n(localOptions.outWidth, localOptions.outHeight);
    }
    a("error loading bitmap size, image may be corrupted, deleting it");
    new File(this.u).delete();
  }
  
  public void a(bi parambi)
  {
    if (!k())
    {
      parambi.a(this.u);
      parambi.a(this.v);
    }
    parambi.a(this.E);
    parambi.a(this.F);
    parambi.a(this.G);
    parambi.a(this.H);
    parambi.a(this.I);
    parambi.a(this.J);
    parambi.a(this.w);
    parambi.a(this.x);
  }
  
  public void a(boolean paramBoolean)
  {
    this.M = paramBoolean;
  }
  
  public void b()
  {
    float f1 = an.f[(-1 + this.j)] * (an.b() - an.n);
    float f2 = an.f[(-1 + this.k)] * (an.b() - an.n);
    float f3 = an.g[(-1 + this.j)] * (an.c() - an.n);
    float f4 = an.g[(-1 + this.k)] * (an.c() - an.n);
    this.l = ((int)(f1 + 0.5F));
    this.m = ((int)(f2 + 0.5F));
    this.n = ((int)(f3 + 0.5F));
    this.o = ((int)(f4 + 0.5F));
    this.p = an.a(this.j);
    this.q = an.b(this.k);
    if (e())
    {
      this.E = a("", this.l, this.m);
      this.F = a("_frame", this.l, this.m);
      this.G = a("", this.n, this.o);
      this.H = a("_frame", this.n, this.o);
    }
    this.I = a("", this.p, this.q);
    if (e())
    {
      this.J = a("_frame", this.p, this.q);
      return;
    }
    this.J = a(this.p, this.q);
  }
  
  public void b(boolean paramBoolean)
  {
    if (j() != paramBoolean)
    {
      this.K = bk.a(this.K, 3, paramBoolean);
      m();
    }
  }
  
  public void c()
  {
    float f1 = an.o;
    if (e())
    {
      f1 = an.c(this.t);
      if (f1 == 0.0F) {
        f1 = an.o;
      }
    }
    this.r = ((int)(this.p / f1));
    this.s = ((int)(this.q / f1));
    this.w = a("_thumb", this.r, this.s);
    if (e())
    {
      this.x = a("_thumb_frame", this.r, this.s);
      return;
    }
    this.x = b(this.r, this.s);
  }
  
  public void c(boolean paramBoolean)
  {
    this.K = bk.a(this.K, 1, paramBoolean);
  }
  
  public void d(boolean paramBoolean)
  {
    this.K = bk.a(this.K, 2, paramBoolean);
  }
  
  public boolean d()
  {
    return this.M;
  }
  
  public boolean e()
  {
    return this.t != 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    a locala;
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      locala = (a)paramObject;
    } while (this.b == locala.b);
    return false;
  }
  
  public void f()
  {
    this.B.mkdir();
  }
  
  public boolean g()
  {
    return this.L;
  }
  
  public void h()
  {
    if (k())
    {
      this.L = true;
      return;
    }
    this.L = new File(this.u).exists();
  }
  
  public int hashCode()
  {
    return 31 + this.b;
  }
  
  public int i()
  {
    return this.K;
  }
  
  public boolean j()
  {
    return bk.a(this.K, new int[] { 3 });
  }
  
  public boolean k()
  {
    return bk.a(this.K, new int[] { 1 });
  }
  
  public boolean l()
  {
    return bk.a(this.K, new int[] { 2 });
  }
  
  public String toString()
  {
    return "Sticker{ id=" + this.b + ", packageId=" + this.t + ", origPath='" + this.u + '\'' + ", isReady=" + this.L + ", onBoard=" + k() + ", colSpan=" + this.j + ", rowSpan=" + this.k + ", genericRowPos=" + this.e + ", genericColPos=" + this.d + '}';
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.c.a
 * JD-Core Version:    0.7.0.1
 */