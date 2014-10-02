package com.viber.voip.gallery.animation;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class q
  implements ViewTreeObserver.OnPreDrawListener
{
  q(SwipeableHorizontalScrollView paramSwipeableHorizontalScrollView, int paramInt, x paramx) {}
  
  public boolean onPreDraw()
  {
    this.c.getViewTreeObserver().removeOnPreDrawListener(this);
    this.c.scrollBy(-this.a, 0);
    SwipeableHorizontalScrollView.a(this.c, this.b);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.animation.q
 * JD-Core Version:    0.7.0.1
 */