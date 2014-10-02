package com.viber.voip.ui.call.sgs3;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.viber.voip.ui.call.a.c;
import com.viber.voip.ui.call.a.d;
import com.viber.voip.ui.call.a.e;
import com.viber.voip.ui.call.a.f;

public class a
  implements View.OnTouchListener, com.viber.voip.ui.call.a.b, d, f
{
  private Drawable a;
  private Rect b;
  private e c = new e(250L);
  private c d;
  private c e;
  private c f;
  private b g;
  private boolean h = false;
  private boolean i = true;
  private boolean j = true;
  private float k = 0.0F;
  private float l = 0.0F;
  private float m = 20.0F;
  private Paint n;
  private float o = 0.0F;
  private float p = 0.0F;
  
  public a(Drawable paramDrawable, float paramFloat1, float paramFloat2, float paramFloat3, int paramInt, b paramb)
  {
    this.a = paramDrawable;
    this.g = paramb;
    this.b = new Rect(0, 0, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
    this.m = paramFloat3;
    this.o = ((this.b.width() + this.b.height()) / 2 / 2 + this.m);
    this.p = (3.0F * this.o);
    this.e = new c(0.0F, 1.0F, new float[] { 0.0F, 1.0F }, new float[] { 255.0F, 5.0F });
    this.f = new c(0.0F, 1.0F, new float[] { 0.0F, 1.0F }, new float[] { 50.0F, 255.0F });
    this.e.c();
    this.f.c();
    a(paramFloat1, paramFloat2);
    this.n = new Paint();
    this.n.setColor(paramInt);
    this.n.setFlags(5);
    this.n.setStyle(Paint.Style.STROKE);
    this.n.setStrokeWidth(4.0F);
  }
  
  public Rect a()
  {
    Rect localRect = new Rect(this.b);
    localRect.inset((int)-this.m, (int)-this.m);
    return localRect;
  }
  
  public void a(float paramFloat)
  {
    if (this.d != null) {
      this.c.a(paramFloat);
    }
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    this.k = paramFloat1;
    this.l = paramFloat2;
  }
  
  public void a(float paramFloat, int paramInt) {}
  
  public void a(long paramLong)
  {
    if (this.d != null) {
      this.c.a(paramLong);
    }
  }
  
  public void a(Canvas paramCanvas)
  {
    this.b.offsetTo((int)(this.k - this.b.width() / 2), (int)(this.l - this.b.height() / 2));
    this.a.setBounds(this.b);
    Drawable localDrawable = this.a;
    if (this.j) {}
    for (int i1 = 255;; i1 = 150)
    {
      localDrawable.setAlpha(i1);
      this.a.draw(paramCanvas);
      if (this.j)
      {
        this.n.setAlpha((int)this.e.c);
        this.n.setStrokeWidth(4.0F);
        paramCanvas.drawCircle(this.k, this.l, this.o, this.n);
        if (this.d != null)
        {
          this.n.setAlpha((int)this.f.c);
          this.n.setStrokeWidth(2.0F);
          paramCanvas.drawCircle(this.k, this.l, this.d.c, this.n);
        }
      }
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }
  
  public void b(float paramFloat) {}
  
  public void b(float paramFloat, int paramInt) {}
  
  public boolean b()
  {
    return this.i;
  }
  
  public void c() {}
  
  public void c(float paramFloat)
  {
    this.d = null;
    this.c.a();
    this.c.c();
  }
  
  public boolean d()
  {
    return true;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i1 = (int)Math.sqrt((paramMotionEvent.getX() - this.k) * (paramMotionEvent.getX() - this.k) + (paramMotionEvent.getY() - this.l) * (paramMotionEvent.getY() - this.l));
    float f1 = i1 / this.p;
    boolean bool;
    if (paramMotionEvent.getAction() == 0) {
      if (i1 < this.p)
      {
        bool = true;
        this.h = bool;
        if (this.h)
        {
          float[] arrayOfFloat3 = { 0.0F, 1.0F };
          float[] arrayOfFloat4 = new float[2];
          arrayOfFloat4[0] = (this.o + this.m);
          arrayOfFloat4[1] = this.p;
          this.d = new c(0.0F, 1.0F, arrayOfFloat3, arrayOfFloat4);
          this.c.a();
          this.c.a(this.d);
          this.c.c();
          this.e.a(f1);
          this.f.a(f1);
          if (this.g != null) {
            this.g.b(this);
          }
        }
      }
    }
    label314:
    do
    {
      do
      {
        return false;
        bool = false;
        break;
        if (2 != paramMotionEvent.getAction()) {
          break label314;
        }
        if ((this.h) && (i1 < this.p))
        {
          this.e.a(f1);
          this.f.a(f1);
          if (this.g != null) {
            this.g.a(this, f1);
          }
        }
      } while ((this.g == null) || (!this.h) || (i1 < this.p));
      this.g.c(this);
      this.h = false;
      return false;
    } while ((!this.h) || (i1 >= this.p) || (this.d == null));
    float[] arrayOfFloat1 = { 0.0F, 1.0F };
    float[] arrayOfFloat2 = new float[2];
    arrayOfFloat2[0] = this.d.c;
    arrayOfFloat2[1] = (this.o + this.m);
    this.d = new c(0.0F, 1.0F, arrayOfFloat1, arrayOfFloat2, this);
    this.c.a();
    this.c.a(this.d);
    this.c.c();
    this.e.c();
    this.f.c();
    this.g.a(this);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.call.sgs3.a
 * JD-Core Version:    0.7.0.1
 */