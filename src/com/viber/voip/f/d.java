package com.viber.voip.f;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class d
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  d(a parama) {}
  
  public void onGlobalLayout()
  {
    View localView = a.d(this.a).findViewById(2131166294);
    if (localView != null)
    {
      a.a(this.a, localView);
      a.e(this.a);
      if (Build.VERSION.SDK_INT >= 16) {
        a.a(a.d(this.a).getViewTreeObserver(), this);
      }
    }
    else
    {
      return;
    }
    a.d(this.a).getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.f.d
 * JD-Core Version:    0.7.0.1
 */