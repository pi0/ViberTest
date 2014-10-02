package com.viber.voip.messages.ui.chathead;

import android.view.WindowManager;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import com.viber.voip.messages.ui.chathead.a.a;

class aw
  implements ValueAnimator.AnimatorUpdateListener
{
  private final float b;
  private final a c;
  private final boolean d;
  
  public aw(d paramd, a parama, float paramFloat, boolean paramBoolean)
  {
    this.c = parama;
    this.b = paramFloat;
    this.d = paramBoolean;
  }
  
  public aw(d paramd, b paramb, float paramFloat, boolean paramBoolean)
  {
    this(paramd, paramb.a(), paramFloat, paramBoolean);
  }
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    if (!d.g(this.a)) {}
    float f;
    do
    {
      return;
      f = ((Float)paramValueAnimator.getAnimatedValue()).floatValue() + this.b;
      ay.b(this.c, f);
    } while (!this.d);
    d.u(this.a).y = ((int)f);
    d.B(this.a).updateViewLayout(d.i(this.a), d.u(this.a));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.aw
 * JD-Core Version:    0.7.0.1
 */