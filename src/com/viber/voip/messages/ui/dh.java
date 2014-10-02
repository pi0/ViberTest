package com.viber.voip.messages.ui;

import com.viber.voip.ui.ab;

class dh
  implements ab
{
  dh(MessagesFragmentModeManager paramMessagesFragmentModeManager) {}
  
  public boolean a(String paramString)
  {
    if ((this.a.b != null) && (this.a.b.c()))
    {
      if (this.a.c != null) {
        this.a.c.a(paramString);
      }
      return true;
    }
    return false;
  }
  
  public boolean a(boolean paramBoolean)
  {
    if ((this.a.b != null) && (this.a.b.c()))
    {
      this.a.a(paramBoolean);
      if (!paramBoolean) {
        this.a.b.k();
      }
    }
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.dh
 * JD-Core Version:    0.7.0.1
 */