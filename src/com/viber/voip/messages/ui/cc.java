package com.viber.voip.messages.ui;

import com.viber.voip.messages.conversation.ao;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class cc
  implements Runnable
{
  cc(MessageComposerView paramMessageComposerView, MessageEntityImpl paramMessageEntityImpl) {}
  
  public void run()
  {
    MessageComposerView.A(this.b).a(this.a);
    MessageComposerView.j(this.b).a(true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.cc
 * JD-Core Version:    0.7.0.1
 */