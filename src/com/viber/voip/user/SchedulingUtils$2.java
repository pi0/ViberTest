package com.viber.voip.user;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnDrawListener;

final class SchedulingUtils$2
  implements ViewTreeObserver.OnDrawListener
{
  SchedulingUtils$2(View paramView, Runnable paramRunnable) {}
  
  public void onDraw()
  {
    this.val$view.getViewTreeObserver().removeOnDrawListener(this);
    this.val$runnable.run();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.user.SchedulingUtils.2
 * JD-Core Version:    0.7.0.1
 */