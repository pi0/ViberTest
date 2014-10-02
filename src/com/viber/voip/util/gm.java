package com.viber.voip.util;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class gm
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  gm(View paramView, Runnable paramRunnable) {}
  
  @SuppressLint({"NewApi"})
  public void onGlobalLayout()
  {
    if (Build.VERSION.SDK_INT >= 16) {
      this.a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
    for (;;)
    {
      this.b.run();
      return;
      this.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.gm
 * JD-Core Version:    0.7.0.1
 */