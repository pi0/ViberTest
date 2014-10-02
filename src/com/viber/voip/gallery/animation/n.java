package com.viber.voip.gallery.animation;

import android.view.View;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;

class n
  implements Animator.AnimatorListener
{
  n(m paramm, View[] paramArrayOfView) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (this.b.e)
    {
      this.b.i.smoothScrollTo(0, 0);
      this.b.i.postDelayed(new o(this), 500L);
      return;
    }
    if (this.b.b == 0) {
      this.b.i.scrollTo(0, 0);
    }
    SwipeableHorizontalScrollView.a(this.b.i, this.b.f, this.b.g, this.b.c, this.b.b, this.a);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.animation.n
 * JD-Core Version:    0.7.0.1
 */