package com.c.a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Cap;
import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import java.util.List;

class d
  extends View
{
  private float b;
  private float c;
  private boolean d;
  
  private void a(float paramFloat)
  {
    double d2;
    if (b.j(this.a) != 0.0D)
    {
      b localb = this.a;
      b.a(localb, b.k(localb) - paramFloat * b.j(this.a) / this.c);
      double d1 = this.a.b(true);
      d2 = this.a.a(true);
      if (b.k(this.a) >= d1) {
        break label132;
      }
      b.a(this.a, d1);
    }
    for (;;)
    {
      if (!b.l(this.a)) {
        b.a(this.a, null);
      }
      if (!b.m(this.a)) {
        b.b(this.a, null);
      }
      b.n(this.a).invalidate();
      invalidate();
      return;
      label132:
      if (b.k(this.a) + b.j(this.a) > d2) {
        b.a(this.a, d2 - b.j(this.a));
      }
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    this.a.a.setAntiAlias(true);
    this.a.a.setStrokeWidth(0.0F);
    float f1 = getHeight();
    float f2 = -1 + getWidth();
    double d1 = this.a.getMaxY();
    double d2 = this.a.getMinY();
    double d3 = this.a.a(false);
    double d4 = this.a.b(false);
    double d5 = d3 - d4;
    if ((b.a(this.a) == null) || (b.b(this.a) == null))
    {
      this.a.a.setTextSize(this.a.getGraphViewStyle().e());
      double d6 = 0.783D * (this.a.a(true) - this.a.b(true)) + this.a.b(true);
      String str = this.a.a(d6, true);
      this.a.a.getTextBounds(str, 0, str.length(), b.c(this.a));
      b.a(this.a, Integer.valueOf(b.c(this.a).height()));
      b.b(this.a, Integer.valueOf(b.c(this.a).width()));
    }
    float f3 = 20.0F + b.a(this.a).intValue();
    float f4 = f1 - 2.0F * f3;
    this.c = f2;
    if (b.d(this.a) == null) {
      b.a(this.a, b.a(this.a, this.c));
    }
    if (b.e(this.a) == null) {
      b.b(this.a, b.b(this.a, f4));
    }
    this.a.a.setTextAlign(Paint.Align.LEFT);
    int i = -1 + b.e(this.a).length;
    int j = 0;
    int k;
    int m;
    label369:
    double d7;
    if (j >= b.e(this.a).length)
    {
      k = -1 + b.d(this.a).length;
      m = 0;
      if (m < b.d(this.a).length) {
        break label566;
      }
      this.a.a.setTextAlign(Paint.Align.CENTER);
      paramCanvas.drawText(b.g(this.a), 0.0F + this.c / 2.0F, f3 - 4.0F, this.a.a);
      if (d1 != d2) {
        break label814;
      }
      if (d1 != 0.0D) {
        break label735;
      }
      d7 = 1.0D;
      d2 = 0.0D;
    }
    for (;;)
    {
      label447:
      double d8 = d7 - d2;
      this.a.a.setStrokeCap(Paint.Cap.ROUND);
      for (int n = 0;; n++)
      {
        if (n >= b.h(this.a).size())
        {
          if (b.i(this.a)) {
            this.a.a(paramCanvas, f1, f2);
          }
          return;
          this.a.a.setColor(b.f(this.a).a());
          float f5 = f3 + f4 / i * j;
          paramCanvas.drawLine(0.0F, f5, f2, f5, this.a.a);
          j++;
          break;
          label566:
          this.a.a.setColor(b.f(this.a).a());
          float f6 = 0.0F + this.c / k * m;
          paramCanvas.drawLine(f6, f1 - f3, f6, f3, this.a.a);
          this.a.a.setTextAlign(Paint.Align.CENTER);
          if (m == -1 + b.d(this.a).length) {
            this.a.a.setTextAlign(Paint.Align.RIGHT);
          }
          if (m == 0) {
            this.a.a.setTextAlign(Paint.Align.LEFT);
          }
          this.a.a.setColor(b.f(this.a).b());
          paramCanvas.drawText(b.d(this.a)[m], f6, f1 - 4.0F, this.a.a);
          m++;
          break label369;
          label735:
          d7 = 1.05D * d1;
          d2 *= 0.95D;
          break label447;
        }
        this.a.a(paramCanvas, b.a(this.a, n), this.c, f4, f3, d4, d2, d5, d8, 0.0F, ((h)b.h(this.a).get(n)).b);
      }
      label814:
      d7 = d1;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!this.a.b()) || (this.a.a())) {
      return super.onTouchEvent(paramMotionEvent);
    }
    if ((b.o(this.a)) && (b.p(this.a) != null)) {
      b.p(this.a).a(paramMotionEvent);
    }
    for (boolean bool = b.p(this.a).a();; bool = false)
    {
      if (!bool)
      {
        Log.d("GraphView", "on touch event scale not handled+" + this.b);
        paramMotionEvent.getAction();
        this.d = true;
        if ((0x1 & paramMotionEvent.getAction()) == 1)
        {
          this.d = false;
          this.b = 0.0F;
        }
        if (((0x2 & paramMotionEvent.getAction()) == 2) && (this.d))
        {
          if (this.b != 0.0F) {
            a(paramMotionEvent.getX() - this.b);
          }
          this.b = paramMotionEvent.getX();
        }
        invalidate();
        return true;
      }
      this.d = false;
      this.b = 0.0F;
      return bool;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.c.a.d
 * JD-Core Version:    0.7.0.1
 */