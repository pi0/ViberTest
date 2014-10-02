package com.viber.voip.messages.controller.a;

import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class v
  implements Runnable
{
  v(t paramt, MessageEntityImpl paramMessageEntityImpl) {}
  
  public void run()
  {
    if (this.a != null) {
      if (!this.a.isHasAnyStatus(new int[] { 2, -1 }))
      {
        this.a.setStatus(-1);
        this.a.setExtraStatus(2);
        p.b(this.b.a).b(this.a);
        p.d(this.b.a).a(this.a.getConversationId(), this.a.getMessageToken(), false);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.v
 * JD-Core Version:    0.7.0.1
 */