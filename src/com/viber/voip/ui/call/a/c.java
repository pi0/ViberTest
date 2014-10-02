package com.viber.voip.ui.call.a;

public class c
  extends a
{
  public float c;
  private String d = null;
  private b e;
  private float[] f = new float[0];
  private float[] g = new float[0];
  private int h = -1;
  private boolean i = false;
  private boolean j = false;
  private float k;
  
  public c(float paramFloat1, float paramFloat2, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    this(paramFloat1, paramFloat2, paramArrayOfFloat1, paramArrayOfFloat2, null);
  }
  
  public c(float paramFloat1, float paramFloat2, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2, b paramb)
  {
    super(paramFloat1, paramFloat2);
    this.f = paramArrayOfFloat1;
    this.g = paramArrayOfFloat2;
    this.e = paramb;
  }
  
  public void a(float paramFloat)
  {
    if (0.0F == paramFloat) {
      c();
    }
    if ((paramFloat >= this.a) && (paramFloat <= this.b))
    {
      boolean bool = this.i;
      int m = 0;
      if (!bool)
      {
        this.i = true;
        b localb = this.e;
        m = 0;
        if (localb != null) {
          this.e.b(paramFloat);
        }
      }
      while ((this.h < -1 + this.f.length) && (b(paramFloat) > this.f[(1 + this.h)]))
      {
        this.h = (1 + this.h);
        if (this.c != this.g[this.h])
        {
          this.c = this.g[this.h];
          m = 1;
        }
        if (this.e != null)
        {
          if (this.h > 0) {
            this.e.b(paramFloat, -1 + this.h);
          }
          this.e.a(paramFloat, this.h);
        }
      }
      if ((m == 0) && (this.h >= 0) && (this.h < -1 + this.f.length)) {
        this.c = (this.g[this.h] + (this.g[(1 + this.h)] - this.g[this.h]) * a(this.f[this.h], this.f[(1 + this.h)], b(paramFloat)));
      }
    }
    do
    {
      return;
      if ((paramFloat <= this.a) && (this.h != 0))
      {
        c();
        return;
      }
    } while ((paramFloat <= this.b) || (this.g.length <= 0));
    if (!this.j)
    {
      this.j = true;
      if (this.e != null) {
        this.e.c(paramFloat);
      }
    }
    this.c = this.g[(-1 + this.g.length)];
  }
  
  public void a(String paramString)
  {
    this.d = paramString;
  }
  
  public boolean a()
  {
    return this.c != this.g[(-1 + this.g.length)];
  }
  
  public void c()
  {
    this.h = -1;
    this.c = this.g[0];
    this.i = false;
    this.j = false;
  }
  
  public boolean d()
  {
    return this.k != this.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.call.a.c
 * JD-Core Version:    0.7.0.1
 */