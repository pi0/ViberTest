package com.viber.voip.widget.dslv;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

class b
  extends GestureDetector.SimpleOnGestureListener
{
  b(a parama) {}
  
  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    int i;
    if ((a.a(this.a)) && (a.b(this.a)))
    {
      i = a.c(this.a).getWidth() / 5;
      if (paramFloat1 <= a.d(this.a)) {
        break label83;
      }
      if (a.e(this.a) > -i) {
        a.c(this.a).a(true, paramFloat1);
      }
    }
    for (;;)
    {
      a.a(this.a, false);
      return false;
      label83:
      if ((paramFloat1 < -a.d(this.a)) && (a.e(this.a) < i)) {
        a.c(this.a).a(true, paramFloat1);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.dslv.b
 * JD-Core Version:    0.7.0.1
 */