package com.viber.voip.messages.ui.chathead;

import android.view.WindowManager;
import com.nineoldandroids.animation.ValueAnimator;
import com.nineoldandroids.animation.ValueAnimator.AnimatorUpdateListener;
import com.viber.voip.messages.ui.chathead.a.a;

class av
  implements ValueAnimator.AnimatorUpdateListener
{
  private final float b;
  private final a c;
  private boolean d;
  
  public av(d paramd, a parama, float paramFloat, boolean paramBoolean)
  {
    this.c = parama;
    this.b = paramFloat;
    this.d = paramBoolean;
  }
  
  public av(d paramd, b paramb, float paramFloat, boolean paramBoolean)
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
      ay.a(this.c, f);
    } while (!this.d);
    d.u(this.a).x = ((int)f);
    d.B(this.a).updateViewLayout(d.i(this.a), d.u(this.a));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.av
 * JD-Core Version:    0.7.0.1
 */