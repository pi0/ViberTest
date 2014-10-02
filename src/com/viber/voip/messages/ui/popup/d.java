package com.viber.voip.messages.ui.popup;

import com.viber.voip.messages.controller.b.b;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.an;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.ui.popup.a.a;
import com.viber.voip.messages.ui.popup.a.h;

class d
  implements com.viber.voip.messages.ui.popup.view.c
{
  d(PopupMessageActivity paramPopupMessageActivity) {}
  
  public void a(int paramInt)
  {
    an localan = PopupMessageActivity.h(this.a).a(PopupMessageActivity.d(this.a).a, this.a);
    if (localan != null)
    {
      MessageEntityImpl localMessageEntityImpl = new b(PopupMessageActivity.i(this.a).a(localan.j()).getGroupId(), localan.l(), localan.G()).a("sticker", paramInt);
      com.viber.voip.messages.controller.c.c.a(this.a.getApplicationContext()).c().a(localMessageEntityImpl);
      PopupMessageActivity.j(this.a);
    }
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.d
 * JD-Core Version:    0.7.0.1
 */