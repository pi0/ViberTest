package com.viber.voip.widget;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.util.LinkedList;

class g
  implements Animation.AnimationListener
{
  g(MessageBar paramMessageBar) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    MessageBar.Message localMessage = (MessageBar.Message)MessageBar.a(this.a).poll();
    if (localMessage != null)
    {
      MessageBar.a(this.a, localMessage);
      return;
    }
    MessageBar.b(this.a, null);
    MessageBar.b(this.a).setVisibility(8);
    MessageBar.a(this.a, false);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.g
 * JD-Core Version:    0.7.0.1
 */