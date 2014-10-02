package com.viber.voip.gallery.animation;

import android.view.View;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.util.gl;

class u
  implements Animator.AnimatorListener
{
  u(s params, View paramView, boolean paramBoolean) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    ViewHelper.setAlpha(this.a, 1.0F);
    ViewHelper.setTranslationY(this.a, 0.0F);
    if (!gl.b()) {
      this.a.clearAnimation();
    }
    if (this.b) {
      this.a.setVisibility(4);
    }
    while (s.a(this.c) != null)
    {
      s.a(this.c).a(this.a, this.b, new v(this));
      return;
      this.a.setVisibility(0);
    }
    s.a(this.c, false);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.animation.u
 * JD-Core Version:    0.7.0.1
 */