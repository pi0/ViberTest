package com.viber.voip.messages.ui.popup;

import com.viber.voip.h.b;

class a
  implements Runnable
{
  a(PopupMessageActivity paramPopupMessageActivity) {}
  
  public void run()
  {
    this.a.a("mInteractionTimeout: mShouldClosePopup = " + PopupMessageActivity.a(this.a));
    if ((PopupMessageActivity.a(this.a)) && (!b.d().a())) {
      this.a.finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.a
 * JD-Core Version:    0.7.0.1
 */