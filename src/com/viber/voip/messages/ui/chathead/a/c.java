package com.viber.voip.messages.ui.chathead.a;

import com.viber.provider.e;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.conversation.ap;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.conversation.w;
import com.viber.voip.util.gj;

class c
  implements e
{
  c(b paramb) {}
  
  public void a(com.viber.provider.b paramb) {}
  
  public void a(com.viber.provider.b paramb, boolean paramBoolean)
  {
    if ((b.a(this.a) != null) && (b.b(this.a).f() != null) && (b.c(this.a).f().l()))
    {
      String str = gj.a(1, (ap)paramb);
      this.a.a(str);
      ViberApplication.log("mParticipantsCallback,conversationId: " + b.d(this.a).f().a() + " mGroupParticipantsName: " + str);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.a.c
 * JD-Core Version:    0.7.0.1
 */