package com.viber.voip.messages.ui.chathead;

import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import java.util.ArrayList;

class l
  extends AnimatorListenerAdapter
{
  l(d paramd) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (!d.g(this.a)) {
      return;
    }
    d.a(this.a, false);
    if (d.D(this.a))
    {
      d.a(this.a, d.E(this.a));
      d.b(this.a, d.E(this.a));
      d.a(this.a, (b)d.t(this.a).get(-1 + d.t(this.a).size()));
    }
    d.F(this.a);
    d.G(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.l
 * JD-Core Version:    0.7.0.1
 */