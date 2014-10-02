package com.viber.voip.messages.ui;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class x
  implements ViewTreeObserver.OnPreDrawListener
{
  x(w paramw) {}
  
  public boolean onPreDraw()
  {
    w.a(this.a).getViewTreeObserver().removeOnPreDrawListener(this);
    w.b(this.a).setOnClickListener(new y(this));
    w.d(this.a).getViewTreeObserver().addOnScrollChangedListener(new z(this));
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.x
 * JD-Core Version:    0.7.0.1
 */