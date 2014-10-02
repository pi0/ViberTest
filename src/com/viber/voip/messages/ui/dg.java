package com.viber.voip.messages.ui;

import com.viber.voip.ViberApplication;

class dg
  implements Runnable
{
  dg(MessagesFragmentModeManager paramMessagesFragmentModeManager, do paramdo, MessagesFragmentModeManager.MessagesFragmentModeManagerData paramMessagesFragmentModeManagerData) {}
  
  public void run()
  {
    this.c.d();
    this.a.a();
    if ((this.b.d) && (!MessagesFragmentModeManager.a(this.c)))
    {
      ViberApplication.log("MessagesFragmentModeManager doShowConfirmDeleteDialog");
      this.c.u();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.dg
 * JD-Core Version:    0.7.0.1
 */