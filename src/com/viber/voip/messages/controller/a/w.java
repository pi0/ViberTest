package com.viber.voip.messages.controller.a;

import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class w
  implements Runnable
{
  w(t paramt, MessageEntityImpl paramMessageEntityImpl) {}
  
  public void run()
  {
    if (this.a != null) {
      if (!this.a.isHasAnyStatus(new int[] { 2, -1 }))
      {
        this.a.setStatus(0);
        p.b(this.b.a).b(this.a);
        p.a(this.b.a);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.w
 * JD-Core Version:    0.7.0.1
 */