package com.viber.voip.messages.conversation.a;

import android.view.MotionEvent;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.b.w;

class q
  implements s
{
  private int b = -1;
  
  q(o paramo) {}
  
  public void a(int paramInt)
  {
    o localo = this.a;
    if (paramInt == 0) {}
    w localw;
    for (boolean bool = true;; bool = false)
    {
      o.a(localo, bool);
      this.b = paramInt;
      localw = w.a(ViberApplication.getInstance());
      if (paramInt != 2) {
        break;
      }
      localw.a(true);
      return;
    }
    localw.a(false);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3) {}
  
  public void a(MotionEvent paramMotionEvent) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.q
 * JD-Core Version:    0.7.0.1
 */