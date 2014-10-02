package com.viber.voip.messages.ui;

import com.viber.voip.messages.d;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class cs
  implements Runnable
{
  cs(cr paramcr) {}
  
  public void run()
  {
    MessageComposerView.a(this.a.b, 2131099673);
    MessageEntityImpl localMessageEntityImpl = MessageComposerView.m(this.a.b).a("sticker", this.a.a);
    this.a.b.a(localMessageEntityImpl, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.cs
 * JD-Core Version:    0.7.0.1
 */