package com.viber.voip.messages.conversation.ui;

import com.viber.voip.ConversationListView;
import com.viber.voip.du;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.stickers.r;

class s
  implements du
{
  s(m paramm) {}
  
  public void a()
  {
    m.a(this.a, "Media mounted");
    if (m.c(this.a).j.getAdapter() != null) {
      m.c(this.a).j.g();
    }
    r.a().r();
    if (m.d(this.a) != null) {
      m.a(this.a).a(m.d(this.a).g(), m.d(this.a).f(), true);
    }
  }
  
  public void b()
  {
    m.a(this.a, "Media unmounted");
    r.a().s();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.s
 * JD-Core Version:    0.7.0.1
 */