package com.viber.voip.messages.ui;

import com.viber.voip.messages.d;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class ca
  implements Runnable
{
  ca(MessageComposerView paramMessageComposerView, String paramString) {}
  
  public void run()
  {
    MessageEntityImpl localMessageEntityImpl = MessageComposerView.m(this.b).a("text", this.a, 0);
    this.b.a(localMessageEntityImpl, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.ca
 * JD-Core Version:    0.7.0.1
 */