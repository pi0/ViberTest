package com.viber.voip.ui.call.sgs3;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import com.viber.voip.bb;
import com.viber.voip.ui.call.a.e;
import com.viber.voip.ui.call.d;

public class SGSIncomingView
  extends View
  implements b
{
  private Paint a = new Paint();
  private d b;
  private d c;
  private a d;
  private a e;
  private Drawable f;
  private Drawable g;
  private Drawable h;
  private Drawable i;
  private float j;
  private float k;
  private int l = 3;
  private c m;
  private e n;
  
  public SGSIncomingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a.setColor(0);
    this.a.setFlags(7);
    setClickable(true);
    setEnabled(true);
    this.n = new e(1000L);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.WavesView);
    try
    {
      DisplayMetrics localDisplayMetrics = localTypedArray.getResources().getDisplayMetrics();
      this.f = getResources().getDrawable(2130837810);
      this.g = getResources().getDrawable(2130837811);
      this.h = getResources().getDrawable(2130837818);
      this.i = getResources().getDrawable(2130837819);
      this.j = a(16.0F, localDisplayMetrics);
      this.d = new a(this.h, 0.0F, 0.0F, this.j, -1157562624, this);
      this.e = new a(this.i, 0.0F, 0.0F, this.j, -1140916224, this);
      this.k = a(10.0F, localDisplayMetrics);
      this.b = new d(this.f, 0.0F, 0.0F, this.l, this.k, true);
      this.c = new d(this.g, 0.0F, 0.0F, this.l, this.k, false);
      this.n.a(e.a);
      this.n.a(this.b);
      this.n.a(this.c);
      return;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  private float a(float paramFloat, DisplayMetrics paramDisplayMetrics)
  {
    return TypedValue.applyDimension(1, paramFloat, paramDisplayMetrics);
  }
  
  public void a(a parama)
  {
    this.d.a(true);
    this.b.a(true);
    this.e.a(true);
    this.c.a(true);
  }
  
  public void a(a parama, float paramFloat)
  {
    boolean bool1 = true;
    d locald1 = this.b;
    boolean bool2;
    d locald2;
    if ((parama == this.d) && (paramFloat < 0.3F))
    {
      bool2 = bool1;
      locald1.a(bool2);
      locald2 = this.c;
      if ((parama != this.e) || (paramFloat >= 0.3F)) {
        break label67;
      }
    }
    for (;;)
    {
      locald2.a(bool1);
      return;
      bool2 = false;
      break;
      label67:
      bool1 = false;
    }
  }
  
  public void b(a parama)
  {
    if (parama == this.d)
    {
      this.d.a(true);
      this.b.a(true);
      this.e.a(false);
      this.c.a(false);
      return;
    }
    this.d.a(false);
    this.b.a(false);
    this.e.a(true);
    this.c.a(true);
  }
  
  public void c(a parama)
  {
    c localc;
    if (this.m != null)
    {
      localc = this.m;
      if (parama != this.d) {
        break label30;
      }
    }
    label30:
    for (int i1 = 0;; i1 = 1)
    {
      localc.a(i1);
      return;
    }
  }
  
  @SuppressLint({"DrawAllocation"})
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawPaint(this.a);
    if (isInEditMode())
    {
      this.n.a(0L);
      this.b.a(paramCanvas);
      this.c.a(paramCanvas);
      this.d.a(paramCanvas);
      this.e.a(paramCanvas);
      return;
    }
    long l1 = SystemClock.uptimeMillis();
    this.n.a(l1);
    this.d.a(l1);
    this.e.a(l1);
    if (this.c.b()) {
      this.c.a(paramCanvas);
    }
    if (this.b.b()) {
      this.b.a(paramCanvas);
    }
    this.d.a(paramCanvas);
    this.e.a(paramCanvas);
    invalidate();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = getMeasuredHeight() - getPaddingBottom() - this.d.a().height() / 2;
    float f2 = getPaddingLeft() + this.d.a().width() / 2;
    this.d.a(f2, f1);
    this.b.a(f2 + this.d.a().width() / 2 + this.k, f1 - this.f.getIntrinsicHeight() / 2, this.k);
    float f3 = getMeasuredWidth() - getPaddingRight() - this.e.a().width() / 2;
    this.e.a(f3, f1);
    this.c.a(f3 - this.e.a().width() / 2 - this.g.getIntrinsicWidth() * this.l - this.k * this.l, f1 - this.g.getIntrinsicHeight() / 2, this.k);
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.d.onTouch(this, paramMotionEvent);
    this.e.onTouch(this, paramMotionEvent);
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setTargetListener(c paramc)
  {
    this.m = paramc;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.call.sgs3.SGSIncomingView
 * JD-Core Version:    0.7.0.1
 */