package com.viber.voip.messages.ui.popup;

import com.viber.voip.h.b;
import com.viber.voip.h.d;
import com.viber.voip.messages.controller.ac;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.ui.PttViewController;

class f
  implements ac
{
  f(PopupMessageActivity paramPopupMessageActivity) {}
  
  public void a(ConversationEntityImpl paramConversationEntityImpl)
  {
    PopupMessageActivity.a(this.a, paramConversationEntityImpl);
    if (PopupMessageActivity.d(this.a).p.getVisibility() == 0) {}
    for (boolean bool = true; paramConversationEntityImpl != null; bool = false)
    {
      if (PopupMessageActivity.n(this.a)) {
        b.d().a(bool, new d(paramConversationEntityImpl.getId()), true);
      }
      this.a.runOnUiThread(new g(this, paramConversationEntityImpl));
      return;
    }
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.f
 * JD-Core Version:    0.7.0.1
 */