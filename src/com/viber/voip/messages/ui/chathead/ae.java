package com.viber.voip.messages.ui.chathead;

import android.content.Context;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.registration.cp;

class ae
  implements Runnable
{
  ae(ad paramad, long paramLong) {}
  
  public void run()
  {
    as localas;
    MessageEntityImpl localMessageEntityImpl;
    ConversationEntityImpl localConversationEntityImpl;
    if (this.a != 0L)
    {
      localas = as.a();
      localMessageEntityImpl = localas.q(this.a);
      localConversationEntityImpl = localas.c(this.a);
      if ((localMessageEntityImpl != null) && (localConversationEntityImpl != null)) {
        break label40;
      }
    }
    label40:
    while ((localMessageEntityImpl.isSystemMessage()) || (localConversationEntityImpl.isMuteNotifications()) || (localConversationEntityImpl.isTrialPublicGroup()) || (localConversationEntityImpl.isPublicGroup())) {
      return;
    }
    ParticipantInfoEntityImpl localParticipantInfoEntityImpl = localas.j(localMessageEntityImpl.getParticipantId());
    if ((localParticipantInfoEntityImpl != null) && ((localParticipantInfoEntityImpl.getNumber() == d.O(this.b.a).f()) || (localParticipantInfoEntityImpl.getNumber().isEmpty())))
    {
      d.a("onNew: own message(number is " + localConversationEntityImpl.getNumber() + ") and isConversationGroup: " + localConversationEntityImpl.isConversationGroup());
      return;
    }
    int i;
    d locald;
    Context localContext;
    long l;
    if ((localConversationEntityImpl.isSmartNotificationOn()) && (!localMessageEntityImpl.isNotification()))
    {
      i = 1;
      locald = this.b.a;
      localContext = d.k(this.b.a);
      l = this.a;
      if (i != 0) {
        break label224;
      }
    }
    label224:
    for (boolean bool = true;; bool = false)
    {
      d.b(locald, localContext, l, bool, false);
      return;
      i = 0;
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.ae
 * JD-Core Version:    0.7.0.1
 */