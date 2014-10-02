package com.viber.voip.gallery.animation;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class r
  implements ViewTreeObserver.OnPreDrawListener
{
  r(SwipeableHorizontalScrollView paramSwipeableHorizontalScrollView) {}
  
  public boolean onPreDraw()
  {
    this.a.getViewTreeObserver().removeOnPreDrawListener(this);
    this.a.smoothScrollTo(SwipeableHorizontalScrollView.a(this.a).getWidth(), 0);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.animation.r
 * JD-Core Version:    0.7.0.1
 */