package com.viber.voip.messages.ui;

class by
  implements Runnable
{
  by(MessageComposerView paramMessageComposerView, String paramString) {}
  
  public void run()
  {
    MessageComposerView.a(this.b, new bz(this));
    if (MessageComposerView.m(this.b) != null)
    {
      MessageComposerView.n(this.b).run();
      MessageComposerView.a(this.b, null);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.by
 * JD-Core Version:    0.7.0.1
 */