package com.viber.voip.messages.ui.chathead;

import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import java.util.ArrayList;
import java.util.Iterator;

class at
  implements ValueAnimator.AnimatorUpdateListener
{
  private final float b;
  
  private at(d paramd, float paramFloat)
  {
    this.b = paramFloat;
  }
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    if (!d.g(this.a)) {}
    for (;;)
    {
      return;
      Iterator localIterator = d.t(this.a).iterator();
      while (localIterator.hasNext()) {
        ay.b(((b)localIterator.next()).a(), ((Float)paramValueAnimator.getAnimatedValue()).floatValue() + this.b);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.at
 * JD-Core Version:    0.7.0.1
 */