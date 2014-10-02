package com.viber.voip.messages.conversation;

import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.ad;

class ab
  implements ad
{
  ab(w paramw) {}
  
  public void a(h paramh)
  {
    if (w.f(this.a) != null) {
      paramh.a(w.f(this.a));
    }
    dc.a(dk.a).postAtFrontOfQueue(new ac(this, paramh));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ab
 * JD-Core Version:    0.7.0.1
 */