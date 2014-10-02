package com.viber.voip.messages.ui.chathead;

import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import com.viber.voip.messages.ui.chathead.a.a;

class z
  extends AnimatorListenerAdapter
{
  z(d paramd) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    d.i(this.a).setVisibility(4);
    d.i(this.a).setShowBadge(false);
    super.onAnimationEnd(paramAnimator);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.z
 * JD-Core Version:    0.7.0.1
 */