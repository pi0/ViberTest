package it.sephiroth.android.library.widget;

import android.content.Context;
import android.util.FloatMath;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public class at
{
  private static float f = 8.0F;
  private static float g = 1.0F / a(1.0F);
  private int a;
  private final au b;
  private final au c;
  private Interpolator d;
  private final boolean e;
  
  public at(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public at(Context paramContext, Interpolator paramInterpolator)
  {
    this(paramContext, paramInterpolator, true);
  }
  
  public at(Context paramContext, Interpolator paramInterpolator, boolean paramBoolean)
  {
    this.d = paramInterpolator;
    this.e = paramBoolean;
    this.b = new au(paramContext);
    this.c = new au(paramContext);
  }
  
  public static float a(float paramFloat)
  {
    float f1 = paramFloat * f;
    if (f1 < 1.0F) {}
    for (float f2 = f1 - (1.0F - (float)Math.exp(-f1));; f2 = 0.3678795F + (1.0F - (float)Math.exp(1.0F - f1)) * (1.0F - 0.3678795F)) {
      return f2 * g;
    }
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    this.b.c(paramInt1, paramInt2, paramInt3);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.a = 0;
    this.b.a(paramInt1, paramInt3, paramInt5);
    this.c.a(paramInt2, paramInt4, paramInt5);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, 0, 0);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
  {
    int j;
    if ((this.e) && (!a()))
    {
      float f1 = au.c(this.b);
      float f2 = au.c(this.c);
      if ((Math.signum(paramInt3) == Math.signum(f1)) && (Math.signum(paramInt4) == Math.signum(f2)))
      {
        j = (int)(f1 + paramInt3);
        paramInt4 = (int)(f2 + paramInt4);
      }
    }
    for (int i = j;; i = paramInt3)
    {
      this.a = 1;
      this.b.a(paramInt1, i, paramInt5, paramInt6, paramInt9);
      this.c.a(paramInt2, paramInt4, paramInt7, paramInt8, paramInt10);
      return;
    }
  }
  
  void a(Interpolator paramInterpolator)
  {
    this.d = paramInterpolator;
  }
  
  public final boolean a()
  {
    return (au.a(this.b)) && (au.a(this.c));
  }
  
  public boolean a(float paramFloat1, float paramFloat2)
  {
    int i = au.e(this.b) - au.d(this.b);
    int j = au.e(this.c) - au.d(this.c);
    return (!a()) && (Math.signum(paramFloat1) == Math.signum(i)) && (Math.signum(paramFloat2) == Math.signum(j));
  }
  
  public boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.a = 1;
    boolean bool1 = this.b.b(paramInt1, paramInt3, paramInt4);
    boolean bool2 = this.c.b(paramInt2, paramInt5, paramInt6);
    return (bool1) || (bool2);
  }
  
  public final int b()
  {
    return au.b(this.b);
  }
  
  public final void b(float paramFloat)
  {
    this.b.a(paramFloat);
    this.c.a(paramFloat);
  }
  
  public float c()
  {
    return FloatMath.sqrt(au.c(this.b) * au.c(this.b) + au.c(this.c) * au.c(this.c));
  }
  
  public boolean d()
  {
    if (a()) {
      return false;
    }
    switch (this.a)
    {
    }
    for (;;)
    {
      return true;
      long l = AnimationUtils.currentAnimationTimeMillis() - au.g(this.b);
      int i = au.f(this.b);
      if (l < i)
      {
        float f1 = (float)l / i;
        if (this.d == null) {}
        for (float f2 = a(f1);; f2 = this.d.getInterpolation(f1))
        {
          this.b.b(f2);
          this.c.b(f2);
          break;
        }
      }
      e();
      continue;
      if ((!au.a(this.b)) && (!this.b.c()) && (!this.b.b())) {
        this.b.a();
      }
      if ((!au.a(this.c)) && (!this.c.c()) && (!this.c.b())) {
        this.c.a();
      }
    }
  }
  
  public void e()
  {
    this.b.a();
    this.c.a();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.at
 * JD-Core Version:    0.7.0.1
 */