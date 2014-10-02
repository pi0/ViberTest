package com.viber.voip.messages.ui.a;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ListView;

class f
  implements View.OnTouchListener
{
  f(c paramc) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 2) {
      c.a(this.a, c.d(this.a).getFirstVisiblePosition());
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.a.f
 * JD-Core Version:    0.7.0.1
 */