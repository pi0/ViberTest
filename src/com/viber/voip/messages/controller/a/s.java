package com.viber.voip.messages.controller.a;

import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class s
  implements Runnable
{
  s(p paramp, long paramLong) {}
  
  public void run()
  {
    MessageEntityImpl localMessageEntityImpl = p.b(this.b).m(this.a);
    localMessageEntityImpl.setExtraStatus(2);
    p.b(this.b).b(localMessageEntityImpl);
    this.b.a(localMessageEntityImpl, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.s
 * JD-Core Version:    0.7.0.1
 */