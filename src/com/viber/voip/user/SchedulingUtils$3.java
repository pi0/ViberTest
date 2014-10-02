package com.viber.voip.user;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class SchedulingUtils$3
  implements ViewTreeObserver.OnPreDrawListener
{
  SchedulingUtils$3(View paramView, Runnable paramRunnable) {}
  
  public boolean onPreDraw()
  {
    this.val$view.getViewTreeObserver().removeOnPreDrawListener(this);
    this.val$runnable.run();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.SchedulingUtils.3
 * JD-Core Version:    0.7.0.1
 */