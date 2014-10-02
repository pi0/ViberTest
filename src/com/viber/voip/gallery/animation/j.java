package com.viber.voip.gallery.animation;

import android.view.View;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.messages.ui.view.ViewPagerWithPagingEnable;
import com.viber.voip.util.gl;

class j
  implements Animator.AnimatorListener
{
  j(d paramd, int paramInt, View paramView, x paramx) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    d.e(this.d).setAdapter(null);
    if (!d.f(this.d)) {
      d.a(this.d, this.a);
    }
    d.g(this.d).c(this.a, this.b);
    d.a(this.d, null);
    ViewHelper.setTranslationX(d.h(this.d), 0.0F);
    if (!gl.b()) {
      d.h(this.d).clearAnimation();
    }
    if (d.h(this.d) != d.i(this.d))
    {
      View localView = d.b(this.d, d.h(this.d));
      if (localView.getVisibility() == 0) {
        localView.setOnTouchListener(d.b(this.d));
      }
    }
    d.e(this.d).setAdapter(this.d);
    ViewPagerWithPagingEnable localViewPagerWithPagingEnable;
    if (this.d.getCount() > 0)
    {
      localViewPagerWithPagingEnable = d.e(this.d);
      if (this.a != -1 + d.j(this.d)) {
        break label261;
      }
    }
    label261:
    for (int i = -1 + this.a;; i = this.a)
    {
      localViewPagerWithPagingEnable.setCurrentItem(i);
      this.c.a();
      d.e(this.d).setPagingEnabled(true);
      if (this.a == 0) {
        this.d.onPageSelected(this.a);
      }
      if (!d.f(this.d)) {
        d.b(this.d, this.a);
      }
      return;
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.animation.j
 * JD-Core Version:    0.7.0.1
 */