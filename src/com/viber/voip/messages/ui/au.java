package com.viber.voip.messages.ui;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class au
{
  private au(aj paramaj) {}
  
  protected void a(int paramInt, Animation paramAnimation, Animation.AnimationListener paramAnimationListener)
  {
    Animation localAnimation;
    Animation.AnimationListener localAnimationListener;
    if (aj.e(this.a).getVisibility() != paramInt)
    {
      localAnimation = aj.e(this.a).getAnimation();
      localAnimationListener = (Animation.AnimationListener)aj.e(this.a).getTag();
      if ((localAnimation == null) || (localAnimation.hasEnded()))
      {
        aj.e(this.a).setVisibility(paramInt);
        aj.e(this.a).startAnimation(paramAnimation);
        aj.e(this.a).setTag(paramAnimationListener);
      }
    }
    else
    {
      return;
    }
    localAnimation.setAnimationListener(new av(this, localAnimationListener, paramInt, paramAnimation, paramAnimationListener));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.au
 * JD-Core Version:    0.7.0.1
 */