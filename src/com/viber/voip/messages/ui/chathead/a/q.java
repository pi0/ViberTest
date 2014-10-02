package com.viber.voip.messages.ui.chathead.a;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;

class q
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  q(l paraml) {}
  
  public void onGlobalLayout()
  {
    int i = l.i(this.a).getWidth();
    int j = l.i(this.a).getHeight();
    int[] arrayOfInt;
    Resources localResources;
    int k;
    if ((i != 0) || (j != 0))
    {
      arrayOfInt = new int[4];
      l.i(this.a).getLocationOnScreen(arrayOfInt);
      localResources = l.f(this.a).getResources();
      k = localResources.getIdentifier("status_bar_height", "dimen", "android");
      if (k <= 0) {
        break label347;
      }
    }
    label347:
    for (int m = localResources.getDimensionPixelSize(k);; m = 0)
    {
      if (!l.j(this.a))
      {
        WindowManager.LayoutParams localLayoutParams1 = new WindowManager.LayoutParams(i, j, 2003, 56, -3);
        localLayoutParams1.x = arrayOfInt[0];
        localLayoutParams1.y = (arrayOfInt[1] - m);
        Log.w("aa", "Added: " + l.j(this.a) + " x: " + arrayOfInt[0] + " y: " + arrayOfInt[1]);
        localLayoutParams1.gravity = 51;
        l.k(this.a).addView(l.d(this.a), localLayoutParams1);
        l.b(this.a, true);
      }
      for (;;)
      {
        this.a.o();
        return;
        WindowManager.LayoutParams localLayoutParams2 = (WindowManager.LayoutParams)l.d(this.a).getLayoutParams();
        localLayoutParams2.x = arrayOfInt[0];
        localLayoutParams2.y = (arrayOfInt[1] - m);
        Log.w("aa", "Added: " + l.j(this.a) + " x: " + arrayOfInt[0] + " y: " + arrayOfInt[1]);
        localLayoutParams2.gravity = 51;
        l.k(this.a).updateViewLayout(l.d(this.a), localLayoutParams2);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.a.q
 * JD-Core Version:    0.7.0.1
 */