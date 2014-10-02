package com.viber.voip.gallery;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class c
  implements View.OnTouchListener
{
  c(b paramb) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0) {
      b.a(this.a, paramView.getTag());
    }
    for (;;)
    {
      return false;
      b.a(this.a, Integer.valueOf(-1));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.c
 * JD-Core Version:    0.7.0.1
 */