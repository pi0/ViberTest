package com.viber.voip.sms;

import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.b.b;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.ui.popup.view.c;

class n
  implements c
{
  n(SmsReplyActivity paramSmsReplyActivity) {}
  
  public void a(int paramInt)
  {
    MessageEntityImpl localMessageEntityImpl = new b(0L, SmsReplyActivity.a(this.a), 0).a("sticker", paramInt);
    ViberApplication.getInstance().getMessagesManager().c().a(localMessageEntityImpl);
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sms.n
 * JD-Core Version:    0.7.0.1
 */