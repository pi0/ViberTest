package com.viber.voip.f;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout.LayoutParams;

class c
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  c(a parama) {}
  
  public void onGlobalLayout()
  {
    Rect localRect = new Rect();
    a.b(this.a).getGlobalVisibleRect(localRect);
    int i = localRect.left;
    int j = localRect.top;
    if ((i != 0) && (j != 0))
    {
      float f1 = (localRect.width() - a.c(this.a).getMeasuredWidth()) / 2.0F;
      float f2 = (localRect.height() - a.c(this.a).getMeasuredHeight()) / 2.0F;
      int k = (int)(f1 + i);
      int m = (int)(f2 + j);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)a.c(this.a).getLayoutParams();
      localLayoutParams.setMargins(k, m, 0, 0);
      localLayoutParams.gravity = 48;
      a.c(this.a).requestLayout();
      if (Build.VERSION.SDK_INT >= 16) {
        a.a(a.b(this.a).getViewTreeObserver(), this);
      }
    }
    else
    {
      return;
    }
    a.b(this.a).getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.f.c
 * JD-Core Version:    0.7.0.1
 */