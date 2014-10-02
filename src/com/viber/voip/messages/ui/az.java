package com.viber.voip.messages.ui;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;

class az
  extends au
  implements Runnable
{
  private Animation c;
  private Animation.AnimationListener d;
  
  private az(aj paramaj, Context paramContext)
  {
    super(paramaj, null);
    this.c = AnimationUtils.loadAnimation(paramContext, 2130968590);
    this.c.setDuration(300L);
    this.d = new ba(this, paramaj);
    this.c.setAnimationListener(this.d);
  }
  
  public void run()
  {
    a(0, this.c, this.d);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.az
 * JD-Core Version:    0.7.0.1
 */