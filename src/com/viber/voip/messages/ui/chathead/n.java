package com.viber.voip.messages.ui.chathead;

import android.widget.FrameLayout;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;

class n
  implements ValueAnimator.AnimatorUpdateListener
{
  n(d paramd, int paramInt) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    d.K(this.b).setPadding(d.K(this.b).getPaddingLeft(), ((Integer)paramValueAnimator.getAnimatedValue()).intValue() + this.a, 0, 0);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.n
 * JD-Core Version:    0.7.0.1
 */