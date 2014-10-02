package com.viber.voip.f;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class b
  implements View.OnTouchListener
{
  b(a parama, e parame) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    Rect localRect2;
    int i;
    int j;
    if (paramMotionEvent.getAction() == 0)
    {
      Rect localRect1 = new Rect();
      localRect2 = new Rect();
      a.a(this.b).getGlobalVisibleRect(localRect1);
      a.b(this.b).getGlobalVisibleRect(localRect2);
      i = (int)paramMotionEvent.getRawX();
      j = (int)paramMotionEvent.getRawY();
      if (!localRect1.contains(i, j)) {
        break label92;
      }
      this.a.a();
    }
    for (;;)
    {
      this.b.b();
      return true;
      label92:
      if (localRect2.contains(i, j)) {
        this.a.a();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.f.b
 * JD-Core Version:    0.7.0.1
 */