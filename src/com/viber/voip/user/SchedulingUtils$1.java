package com.viber.voip.user;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class SchedulingUtils$1
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  SchedulingUtils$1(View paramView, Runnable paramRunnable) {}
  
  public void onGlobalLayout()
  {
    if (Build.VERSION.SDK_INT > 15) {
      this.val$view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
    for (;;)
    {
      this.val$runnable.run();
      return;
      this.val$view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.SchedulingUtils.1
 * JD-Core Version:    0.7.0.1
 */