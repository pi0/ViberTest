package com.viber.voip.messages.ui;

import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.viber.voip.messages.ui.a.a;
import com.viber.voip.stickers.b;
import com.viber.voip.stickers.r;

class ax
  implements Animation.AnimationListener
{
  ax(aw paramaw, aj paramaj) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    this.b.b.g.removeCallbacks(aj.d(this.b.b));
    this.b.b.g.postDelayed(aj.d(this.b.b), 200L);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation)
  {
    this.b.b.g.removeCallbacks(aj.d(this.b.b));
    aj.b(this.b.b).d().a(true);
    if (this.b.b.d != null) {
      this.b.b.d.d();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.ax
 * JD-Core Version:    0.7.0.1
 */