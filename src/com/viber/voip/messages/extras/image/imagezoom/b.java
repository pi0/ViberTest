package com.viber.voip.messages.extras.image.imagezoom;

import android.graphics.RectF;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View.OnClickListener;
import com.viber.voip.ViberApplication;

class b
  extends GestureDetector.SimpleOnGestureListener
{
  b(ImageViewTouch paramImageViewTouch) {}
  
  public boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    float f1 = this.a.getScale();
    float f2 = this.a.a(f1, this.a.getMaxZoom());
    float f3 = Math.min(this.a.getMaxZoom(), Math.max(f2, 0.9F));
    this.a.d = f3;
    this.a.b(f3, paramMotionEvent.getX(), paramMotionEvent.getY(), 200.0F);
    this.a.invalidate();
    if ((this.a.i != null) && (f3 > 1.0F)) {
      this.a.i.a(false);
    }
    return super.onDoubleTap(paramMotionEvent);
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if ((paramMotionEvent1.getPointerCount() > 1) || (paramMotionEvent2.getPointerCount() > 1)) {}
    while (this.a.a.a()) {
      return false;
    }
    float f1 = paramMotionEvent2.getX() - paramMotionEvent1.getX();
    float f2 = paramMotionEvent2.getY() - paramMotionEvent1.getY();
    if ((Math.abs(paramFloat1) > 800.0F) || (Math.abs(paramFloat2) > 800.0F))
    {
      this.a.c(f1 / 2.0F, f2 / 2.0F, 300.0F);
      this.a.invalidate();
    }
    return super.onFling(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
  }
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    int i = 1;
    if ((paramMotionEvent1 == null) || (paramMotionEvent2 == null)) {}
    while ((paramMotionEvent1.getPointerCount() > i) || (paramMotionEvent2.getPointerCount() > i) || (this.a.a.a())) {
      return false;
    }
    this.a.d(-paramFloat1, -paramFloat2);
    this.a.invalidate();
    RectF localRectF;
    float f;
    if (this.a.i != null)
    {
      if ((this.a.getScale() == 1.0F) && (this.a.i != null))
      {
        this.a.i.a(i);
        return false;
      }
      localRectF = this.a.getBitmapRect();
      if (localRectF != null)
      {
        f = this.a.getWidth();
        if (((paramMotionEvent1.getX() - paramMotionEvent2.getX() < this.a.l) || ((int)(localRectF.right - f) > 0)) && ((paramMotionEvent1.getX() - paramMotionEvent2.getX() > -this.a.l) || ((int)localRectF.left < 0))) {
          break label328;
        }
      }
    }
    for (;;)
    {
      ViberApplication.log("AAAA minScrollToNavigate=" + this.a.l + " e1-e2=" + (paramMotionEvent1.getX() - paramMotionEvent2.getX()) + " distanceX = " + paramFloat1 + ", canScrollView = " + i + " width " + f + " bitmapRect.right = " + localRectF.right + " bitmapRect.left = " + localRectF.left);
      this.a.i.a(i);
      if (i != 0) {
        break;
      }
      return super.onScroll(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
      label328:
      int j = 0;
    }
  }
  
  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if (this.a.j != null)
    {
      this.a.j.onClick(this.a);
      return true;
    }
    return super.onSingleTapConfirmed(paramMotionEvent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.imagezoom.b
 * JD-Core Version:    0.7.0.1
 */