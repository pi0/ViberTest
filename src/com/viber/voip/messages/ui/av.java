package com.viber.voip.messages.ui;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class av
  implements Animation.AnimationListener
{
  av(au paramau, Animation.AnimationListener paramAnimationListener1, int paramInt, Animation paramAnimation, Animation.AnimationListener paramAnimationListener2) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (this.a != null) {
      this.a.onAnimationEnd(paramAnimation);
    }
    paramAnimation.setAnimationListener(this.a);
    aj.e(this.e.a).setVisibility(this.b);
    aj.e(this.e.a).startAnimation(this.c);
    aj.e(this.e.a).setTag(this.d);
  }
  
  public void onAnimationRepeat(Animation paramAnimation)
  {
    if (this.a != null) {
      this.a.onAnimationRepeat(paramAnimation);
    }
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    if (this.a != null) {
      this.a.onAnimationStart(paramAnimation);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.av
 * JD-Core Version:    0.7.0.1
 */