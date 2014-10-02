package com.viber.voip.contacts.ui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.Animator.AnimatorListener;

class ab
  implements Animator.AnimatorListener
{
  ab(aa paramaa) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    aa.c(this.a).removeView(aa.b(this.a));
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)aa.d(this.a).getLayoutParams();
    aa.e(this.a).removeView(aa.d(this.a));
    localLayoutParams.leftMargin = aa.f(this.a);
    localLayoutParams.topMargin = aa.g(this.a);
    localLayoutParams.gravity = 51;
    aa.d(this.a).setLayoutParams(localLayoutParams);
    aa.d(this.a).requestLayout();
    aa.h(this.a).addView(aa.d(this.a));
    aa.a(this.a, 2);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ab
 * JD-Core Version:    0.7.0.1
 */