package com.viber.voip.messages.ui;

import com.viber.voip.messages.d;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class cf
  implements Runnable
{
  cf(MessageComposerView paramMessageComposerView, int paramInt1, int paramInt2) {}
  
  public void run()
  {
    MessageEntityImpl localMessageEntityImpl = MessageComposerView.m(this.c).a(this.a, this.b, null);
    localMessageEntityImpl.setRecipientNumber(MessageComposerView.C(this.c));
    this.c.a(localMessageEntityImpl, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.cf
 * JD-Core Version:    0.7.0.1
 */