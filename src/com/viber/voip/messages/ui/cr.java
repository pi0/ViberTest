package com.viber.voip.messages.ui;

import com.viber.voip.a.ac;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;

class cr
  implements Runnable
{
  cr(MessageComposerView paramMessageComposerView, long paramLong) {}
  
  public void run()
  {
    MessageComposerView.a(this.b, new cs(this));
    if (MessageComposerView.m(this.b) != null)
    {
      MessageComposerView.n(this.b).run();
      MessageComposerView.a(this.b, null);
    }
    bc.a().a(MessageComposerView.f(this.b).b.b(Long.toString(this.a)));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.cr
 * JD-Core Version:    0.7.0.1
 */