package com.viber.voip.phone.b;

import com.viber.voip.messages.controller.ad;
import com.viber.voip.messages.controller.b.b;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class ab
  implements ad
{
  ab(y paramy, String paramString1, String paramString2, i parami) {}
  
  public void a(h paramh)
  {
    MessageEntityImpl localMessageEntityImpl = new b(0L, this.a, 0).a("text", this.b, 0);
    if ((paramh != null) && (paramh.r()) && ((localMessageEntityImpl.getLat() == 0) || (localMessageEntityImpl.getLng() == 0))) {
      localMessageEntityImpl.setExtraStatus(0);
    }
    this.c.c().a(localMessageEntityImpl);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.ab
 * JD-Core Version:    0.7.0.1
 */