package com.viber.voip.sms;

import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.ab;
import com.viber.voip.messages.controller.b.b;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class k
  implements ab
{
  k(SmsReplyActivity paramSmsReplyActivity, String paramString) {}
  
  public void a()
  {
    MessageEntityImpl localMessageEntityImpl = new b(0L, SmsReplyActivity.a(this.b), 0).a("text", this.a.trim(), 0);
    ViberApplication.getInstance().getMessagesManager().c().a(localMessageEntityImpl);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sms.k
 * JD-Core Version:    0.7.0.1
 */