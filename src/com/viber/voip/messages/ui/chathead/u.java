package com.viber.voip.messages.ui.chathead;

import com.nineoldandroids.animation.Animator;
import com.nineoldandroids.animation.AnimatorListenerAdapter;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.messages.ui.chathead.a.a;
import java.util.ArrayList;
import java.util.Iterator;

class u
  extends AnimatorListenerAdapter
{
  u(d paramd) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    Iterator localIterator = d.t(this.a).iterator();
    while (localIterator.hasNext())
    {
      a locala = ((b)localIterator.next()).a();
      ViewHelper.setScaleX(locala, 1.0F);
      ViewHelper.setScaleY(locala, 1.0F);
    }
    super.onAnimationCancel(paramAnimator);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.u
 * JD-Core Version:    0.7.0.1
 */