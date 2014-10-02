package com.viber.voip.messages.ui;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;

class aw
  extends au
  implements Runnable
{
  private Animation c;
  private Animation.AnimationListener d;
  
  private aw(aj paramaj, Context paramContext)
  {
    super(paramaj, null);
    this.c = AnimationUtils.loadAnimation(paramContext, 2130968591);
    this.c.setDuration(300L);
    this.d = new ax(this, paramaj);
    this.c.setAnimationListener(this.d);
  }
  
  public void run()
  {
    a(8, this.c, this.d);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.aw
 * JD-Core Version:    0.7.0.1
 */