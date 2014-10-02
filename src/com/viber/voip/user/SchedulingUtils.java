package com.viber.voip.user;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;

public class SchedulingUtils
{
  public static void doAfterDraw(View paramView, Runnable paramRunnable)
  {
    if (Build.VERSION.SDK_INT > 15)
    {
      SchedulingUtils.2 local2 = new SchedulingUtils.2(paramView, paramRunnable);
      paramView.getViewTreeObserver().addOnDrawListener(local2);
      return;
    }
    SchedulingUtils.3 local3 = new SchedulingUtils.3(paramView, paramRunnable);
    paramView.getViewTreeObserver().addOnPreDrawListener(local3);
  }
  
  public static void doAfterLayout(View paramView, Runnable paramRunnable)
  {
    SchedulingUtils.1 local1 = new SchedulingUtils.1(paramView, paramRunnable);
    paramView.getViewTreeObserver().addOnGlobalLayoutListener(local1);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.SchedulingUtils
 * JD-Core Version:    0.7.0.1
 */