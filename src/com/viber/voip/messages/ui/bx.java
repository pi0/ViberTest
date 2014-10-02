package com.viber.voip.messages.ui;

import android.os.Handler;

class bx
  implements Runnable
{
  bx(MessageComposerView paramMessageComposerView) {}
  
  public void run()
  {
    if ((MessageComposerView.w(this.a)) && (MessageComposerView.x(this.a))) {
      MessageComposerView.y(this.a);
    }
    MessageComposerView localMessageComposerView = this.a;
    if (!MessageComposerView.w(this.a)) {}
    for (boolean bool = true;; bool = false)
    {
      MessageComposerView.c(localMessageComposerView, bool);
      MessageComposerView.a(this.a, false);
      MessageComposerView.p(this.a).postDelayed(this, 2000L);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.bx
 * JD-Core Version:    0.7.0.1
 */