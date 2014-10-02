package com.viber.voip.messages.ui;

import com.viber.voip.messages.d;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class bz
  implements Runnable
{
  bz(by paramby) {}
  
  public void run()
  {
    MessageEntityImpl localMessageEntityImpl = MessageComposerView.m(this.a.b).a("text", this.a.a, 0);
    this.a.b.a(localMessageEntityImpl, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.bz
 * JD-Core Version:    0.7.0.1
 */