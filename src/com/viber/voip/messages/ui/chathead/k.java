package com.viber.voip.messages.ui.chathead;

import android.view.WindowManager;
import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;

class k
  extends AnimatorListenerAdapter
{
  k(d paramd, int paramInt, float paramFloat) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (!d.g(this.c)) {
      return;
    }
    d.a(this.c, false);
    d.u(this.c).x = this.a;
    d.u(this.c).y = ((int)this.b);
    d.B(this.c).updateViewLayout(d.i(this.c), d.u(this.c));
    d.a(this.c, this.a);
    d.b(this.c, this.b);
    d.C(this.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.k
 * JD-Core Version:    0.7.0.1
 */