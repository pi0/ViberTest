package com.android.camera;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;

class m
{
  View a;
  boolean b;
  boolean c;
  Rect d;
  RectF e;
  Matrix f;
  private n g = n.a;
  private RectF h;
  private boolean i = false;
  private float j;
  private boolean k = false;
  private Drawable l;
  private Drawable m;
  private Drawable n;
  private final Paint o = new Paint();
  private final Paint p = new Paint();
  private final Paint q = new Paint();
  
  public m(View paramView)
  {
    this.a = paramView;
  }
  
  private void d()
  {
    Resources localResources = this.a.getResources();
    this.l = localResources.getDrawable(2130838104);
    this.m = localResources.getDrawable(2130838103);
    this.n = localResources.getDrawable(2130838342);
  }
  
  private Rect e()
  {
    RectF localRectF = new RectF(this.e.left, this.e.top, this.e.right, this.e.bottom);
    this.f.mapRect(localRectF);
    return new Rect(Math.round(localRectF.left), Math.round(localRectF.top), Math.round(localRectF.right), Math.round(localRectF.bottom));
  }
  
  public int a(float paramFloat1, float paramFloat2)
  {
    int i1 = 32;
    Rect localRect = e();
    if (this.k)
    {
      float f1 = paramFloat1 - localRect.centerX();
      float f2 = paramFloat2 - localRect.centerY();
      int i6 = (int)Math.sqrt(f1 * f1 + f2 * f2);
      int i7 = this.d.width() / 2;
      if (Math.abs(i6 - i7) <= 20.0F) {
        if (Math.abs(f2) > Math.abs(f1)) {
          if (f2 < 0.0F) {
            i1 = 8;
          }
        }
      }
      while (i6 < i7)
      {
        return i1;
        return 16;
        if (f1 < 0.0F) {
          return 2;
        }
        return 4;
      }
      return 1;
    }
    int i2;
    int i3;
    if ((paramFloat2 >= localRect.top - 20.0F) && (paramFloat2 < 20.0F + localRect.bottom))
    {
      i2 = 1;
      boolean bool1 = paramFloat1 < localRect.left - 20.0F;
      i3 = 0;
      if (!bool1)
      {
        boolean bool2 = paramFloat1 < 20.0F + localRect.right;
        i3 = 0;
        if (bool2) {
          i3 = 1;
        }
      }
      if ((Math.abs(localRect.left - paramFloat1) >= 20.0F) || (i2 == 0)) {
        break label350;
      }
    }
    label348:
    label350:
    for (int i4 = 3;; i4 = 1)
    {
      if ((Math.abs(localRect.right - paramFloat1) < 20.0F) && (i2 != 0)) {
        i4 |= 0x4;
      }
      if ((Math.abs(localRect.top - paramFloat2) < 20.0F) && (i3 != 0)) {
        i4 |= 0x8;
      }
      if ((Math.abs(localRect.bottom - paramFloat2) < 20.0F) && (i3 != 0)) {}
      for (int i5 = i4 | 0x10;; i5 = i4)
      {
        if ((i5 == 1) && (localRect.contains((int)paramFloat1, (int)paramFloat2))) {
          break label348;
        }
        return i5;
        i2 = 0;
        break;
      }
      break;
    }
  }
  
  void a(int paramInt, float paramFloat1, float paramFloat2)
  {
    Rect localRect = e();
    if (paramInt == 1) {
      return;
    }
    if (paramInt == 32)
    {
      b(paramFloat1 * (this.e.width() / localRect.width()), paramFloat2 * (this.e.height() / localRect.height()));
      return;
    }
    if ((paramInt & 0x6) == 0) {
      paramFloat1 = 0.0F;
    }
    if ((paramInt & 0x18) == 0) {
      paramFloat2 = 0.0F;
    }
    float f1 = paramFloat1 * (this.e.width() / localRect.width());
    float f2 = paramFloat2 * (this.e.height() / localRect.height());
    int i1;
    float f3;
    if ((paramInt & 0x2) != 0)
    {
      i1 = -1;
      f3 = f1 * i1;
      if ((paramInt & 0x8) == 0) {
        break label155;
      }
    }
    label155:
    for (int i2 = -1;; i2 = 1)
    {
      c(f3, f2 * i2);
      return;
      i1 = 1;
      break;
    }
  }
  
  protected void a(Canvas paramCanvas)
  {
    if (this.c) {}
    for (;;)
    {
      return;
      paramCanvas.save();
      Path localPath = new Path();
      if (!a())
      {
        this.q.setColor(-16777216);
        paramCanvas.drawRect(this.d, this.q);
        return;
      }
      Rect localRect = new Rect();
      this.a.getDrawingRect(localRect);
      if (this.k)
      {
        float f1 = this.d.width();
        float f2 = this.d.height();
        localPath.addCircle(this.d.left + f1 / 2.0F, this.d.top + f2 / 2.0F, f1 / 2.0F, Path.Direction.CW);
        this.q.setColor(-1112874);
      }
      try
      {
        for (;;)
        {
          paramCanvas.clipPath(localPath, Region.Op.DIFFERENCE);
          if (!a()) {
            break label388;
          }
          localPaint = this.o;
          paramCanvas.drawRect(localRect, localPaint);
          paramCanvas.restore();
          paramCanvas.drawPath(localPath, this.q);
          if (this.g != n.c) {
            break;
          }
          if (!this.k) {
            break label397;
          }
          int i11 = this.n.getIntrinsicWidth();
          int i12 = this.n.getIntrinsicHeight();
          int i13 = (int)Math.round(Math.cos(0.7853981633974483D) * (this.d.width() / 2.0D));
          int i14 = i13 + (this.d.left + this.d.width() / 2) - i11 / 2;
          int i15 = this.d.top + this.d.height() / 2 - i13 - i12 / 2;
          this.n.setBounds(i14, i15, i14 + this.n.getIntrinsicWidth(), i15 + this.n.getIntrinsicHeight());
          this.n.draw(paramCanvas);
          return;
          localPath.addRect(new RectF(this.d), Path.Direction.CW);
          this.q.setColor(-9812342);
        }
      }
      catch (UnsupportedOperationException localUnsupportedOperationException)
      {
        for (;;)
        {
          Log.d(m.class.getSimpleName(), localUnsupportedOperationException.toString());
          continue;
          label388:
          Paint localPaint = this.p;
        }
        label397:
        int i1 = 1 + this.d.left;
        int i2 = 1 + this.d.right;
        int i3 = 4 + this.d.top;
        int i4 = 3 + this.d.bottom;
        int i5 = this.l.getIntrinsicWidth() / 2;
        int i6 = this.l.getIntrinsicHeight() / 2;
        int i7 = this.m.getIntrinsicHeight() / 2;
        int i8 = this.m.getIntrinsicWidth() / 2;
        int i9 = this.d.left + (this.d.right - this.d.left) / 2;
        int i10 = this.d.top + (this.d.bottom - this.d.top) / 2;
        this.l.setBounds(i1 - i5, i10 - i6, i1 + i5, i10 + i6);
        this.l.draw(paramCanvas);
        this.l.setBounds(i2 - i5, i10 - i6, i2 + i5, i10 + i6);
        this.l.draw(paramCanvas);
        this.m.setBounds(i9 - i8, i3 - i7, i9 + i8, i3 + i7);
        this.m.draw(paramCanvas);
        this.m.setBounds(i9 - i8, i4 - i7, i9 + i8, i4 + i7);
        this.m.draw(paramCanvas);
      }
    }
  }
  
  public void a(Matrix paramMatrix, Rect paramRect, RectF paramRectF, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {
      paramBoolean2 = true;
    }
    this.f = new Matrix(paramMatrix);
    this.e = paramRectF;
    this.h = new RectF(paramRect);
    this.i = paramBoolean2;
    this.k = paramBoolean1;
    this.j = (this.e.width() / this.e.height());
    this.d = e();
    this.o.setARGB(125, 50, 50, 50);
    this.p.setARGB(125, 50, 50, 50);
    this.q.setStrokeWidth(3.0F);
    this.q.setStyle(Paint.Style.STROKE);
    this.q.setAntiAlias(true);
    this.g = n.a;
    d();
  }
  
  public void a(n paramn)
  {
    if (paramn != this.g)
    {
      this.g = paramn;
      this.a.invalidate();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public boolean a()
  {
    return this.b;
  }
  
  public Rect b()
  {
    return new Rect((int)this.e.left, (int)this.e.top, (int)this.e.right, (int)this.e.bottom);
  }
  
  void b(float paramFloat1, float paramFloat2)
  {
    Rect localRect = new Rect(this.d);
    this.e.offset(paramFloat1, paramFloat2);
    this.e.offset(Math.max(0.0F, this.h.left - this.e.left), Math.max(0.0F, this.h.top - this.e.top));
    this.e.offset(Math.min(0.0F, this.h.right - this.e.right), Math.min(0.0F, this.h.bottom - this.e.bottom));
    this.d = e();
    localRect.union(this.d);
    localRect.inset(-10, -10);
    this.a.invalidate(localRect);
  }
  
  public void b(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
  
  public void c()
  {
    this.d = e();
  }
  
  void c(float paramFloat1, float paramFloat2)
  {
    RectF localRectF;
    float f1;
    if (this.i)
    {
      if (paramFloat1 != 0.0F) {
        paramFloat2 = paramFloat1 / this.j;
      }
    }
    else
    {
      localRectF = new RectF(this.e);
      if ((paramFloat1 <= 0.0F) || (localRectF.width() + 2.0F * paramFloat1 <= this.h.width())) {
        break label412;
      }
      paramFloat1 = (this.h.width() - localRectF.width()) / 2.0F;
      if (!this.i) {
        break label412;
      }
      f1 = paramFloat1 / this.j;
    }
    for (float f2 = paramFloat1;; f2 = paramFloat1)
    {
      if ((f1 > 0.0F) && (localRectF.height() + 2.0F * f1 > this.h.height()))
      {
        f1 = (this.h.height() - localRectF.height()) / 2.0F;
        if (this.i) {
          f2 = f1 * this.j;
        }
      }
      localRectF.inset(-f2, -f1);
      if (localRectF.width() < 25.0F) {
        localRectF.inset(-(25.0F - localRectF.width()) / 2.0F, 0.0F);
      }
      float f3;
      if (this.i)
      {
        f3 = 25.0F / this.j;
        label203:
        if (localRectF.height() < f3) {
          localRectF.inset(0.0F, -(f3 - localRectF.height()) / 2.0F);
        }
        if (localRectF.left >= this.h.left) {
          break label340;
        }
        localRectF.offset(this.h.left - localRectF.left, 0.0F);
        label260:
        if (localRectF.top >= this.h.top) {
          break label376;
        }
        localRectF.offset(0.0F, this.h.top - localRectF.top);
      }
      for (;;)
      {
        this.e.set(localRectF);
        this.d = e();
        this.a.invalidate();
        return;
        if (paramFloat2 == 0.0F) {
          break;
        }
        paramFloat1 = paramFloat2 * this.j;
        break;
        f3 = 25.0F;
        break label203;
        label340:
        if (localRectF.right <= this.h.right) {
          break label260;
        }
        localRectF.offset(-(localRectF.right - this.h.right), 0.0F);
        break label260;
        label376:
        if (localRectF.bottom > this.h.bottom) {
          localRectF.offset(0.0F, -(localRectF.bottom - this.h.bottom));
        }
      }
      label412:
      f1 = paramFloat2;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.android.camera.m
 * JD-Core Version:    0.7.0.1
 */