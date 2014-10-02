package com.viber.voip.gallery.animation;

import android.view.View;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.messages.ui.view.ViewPagerWithPagingEnable;
import com.viber.voip.util.gl;

class g
  implements Animator.AnimatorListener
{
  g(d paramd, View paramView1, View paramView2, View paramView3, View paramView4, x paramx) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    ViewHelper.setAlpha(this.a, 1.0F);
    ViewHelper.setAlpha(this.b, 1.0F);
    ViewHelper.setAlpha(this.c, 1.0F);
    if (!gl.b()) {
      this.a.clearAnimation();
    }
    this.a.setOnClickListener(new h(this));
    this.e.a();
    d.a(this.f, new i(this));
    d.e(this.f).requestDisallowInterceptTouchEvent(false);
    d.e(this.f).setPagingEnabled(true);
    d.c(this.f).postDelayed(d.d(this.f), 3000L);
    d.c(this.f).setOnTouchListener(d.b(this.f));
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.animation.g
 * JD-Core Version:    0.7.0.1
 */