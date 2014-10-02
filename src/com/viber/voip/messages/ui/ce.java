package com.viber.voip.messages.ui;

import com.viber.voip.messages.d;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class ce
  implements Runnable
{
  ce(MessageComposerView paramMessageComposerView, int paramInt1, int paramInt2, String paramString) {}
  
  public void run()
  {
    MessageEntityImpl localMessageEntityImpl = MessageComposerView.m(this.d).a(this.a, this.b, this.c);
    this.d.a(localMessageEntityImpl, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.ce
 * JD-Core Version:    0.7.0.1
 */