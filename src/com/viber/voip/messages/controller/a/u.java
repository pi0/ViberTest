package com.viber.voip.messages.controller.a;

import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class u
  implements Runnable
{
  u(t paramt, MessageEntityImpl paramMessageEntityImpl, long paramLong) {}
  
  public void run()
  {
    MessageEntityImpl localMessageEntityImpl = p.b(this.c.a).m(this.a.getId());
    if (localMessageEntityImpl != null) {
      if (!localMessageEntityImpl.isHasAnyStatus(new int[] { -1, 2, 1, 3 }))
      {
        if (localMessageEntityImpl.getStatus() != 4) {
          localMessageEntityImpl.setStatus(0);
        }
        localMessageEntityImpl.setExtraStatus(3);
        localMessageEntityImpl.setObjectId(this.b);
        p.b(this.c.a).b(localMessageEntityImpl);
        p.a(this.c.a);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.u
 * JD-Core Version:    0.7.0.1
 */