package com.viber.voip.gallery.animation;

import android.view.View;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import com.nineoldandroids.view.ViewHelper;

class t
  implements Animator.AnimatorListener
{
  t(s params, View paramView) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    ViewHelper.setAlpha(this.a, 1.0F);
    ViewHelper.setTranslationY(this.a, 0.0F);
    this.a.clearAnimation();
    if (s.a(this.b) != null) {
      s.a(this.b).d(this.a);
    }
    s.a(this.b, false);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.animation.t
 * JD-Core Version:    0.7.0.1
 */