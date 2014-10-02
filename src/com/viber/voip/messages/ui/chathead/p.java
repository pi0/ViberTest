package com.viber.voip.messages.ui.chathead;

import android.os.Build.VERSION;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.viber.voip.messages.ui.chathead.a.l;

class p
  implements View.OnTouchListener
{
  p(d paramd) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (d.a(this.a).isShowing()) {
      if (d.b(this.a))
      {
        if (paramMotionEvent.getRawY() > d.c(this.a).a)
        {
          if (Build.VERSION.SDK_INT >= 19) {
            paramMotionEvent.setLocation(paramMotionEvent.getX(), paramMotionEvent.getY() - d.c(this.a).a + d.d(this.a));
          }
          for (;;)
          {
            d.a(this.a).getContentView().dispatchTouchEvent(paramMotionEvent);
            return true;
            paramMotionEvent.setLocation(paramMotionEvent.getX(), paramMotionEvent.getY() - d.c(this.a).a);
          }
        }
      }
      else if (d.e(this.a))
      {
        if ((paramMotionEvent.getRawX() > (d.f(this.a) - d.c(this.a).w) / 2) && (paramMotionEvent.getRawX() < (d.f(this.a) - d.c(this.a).w) / 2 + d.c(this.a).w))
        {
          paramMotionEvent.setLocation(paramMotionEvent.getRawX() - (d.f(this.a) - d.c(this.a).w) / 2, paramMotionEvent.getRawY());
          d.a(this.a).getContentView().dispatchTouchEvent(paramMotionEvent);
          return true;
        }
      }
      else if (paramMotionEvent.getRawX() < d.f(this.a) - d.c(this.a).a)
      {
        d.a(this.a).getContentView().dispatchTouchEvent(paramMotionEvent);
        return true;
      }
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.p
 * JD-Core Version:    0.7.0.1
 */