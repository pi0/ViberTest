package com.viber.voip.messages.ui;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.EditText;

class n
  implements View.OnTouchListener
{
  n(k paramk, EditText paramEditText) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0) {
      this.b.g.postDelayed(k.b(this.b), 400L);
    }
    for (;;)
    {
      return false;
      if ((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 3))
      {
        this.b.g.removeCallbacks(k.b(this.b));
        k.a(this.b, this.a);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.n
 * JD-Core Version:    0.7.0.1
 */