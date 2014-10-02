package com.viber.voip.messages.ui.chathead;

import android.view.View;
import android.view.WindowManager;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;

class m
  extends AnimatorListenerAdapter
{
  m(d paramd) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (!d.g(this.a)) {}
    do
    {
      return;
      d.u(this.a).x = ((int)d.H(this.a));
      d.u(this.a).y = ((int)d.I(this.a));
      d.B(this.a).updateViewLayout(d.i(this.a), d.u(this.a));
      d.a(this.a, d.H(this.a));
      d.b(this.a, d.I(this.a));
      if (d.J(this.a)) {
        d.o(this.a).setVisibility(4);
      }
    } while (d.l(this.a));
    d.a("popupCloseAnimation: animationEnd,!mToRestoreAfterCall");
    d.C(this.a);
  }
  
  public void onAnimationStart(Animator paramAnimator) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.m
 * JD-Core Version:    0.7.0.1
 */