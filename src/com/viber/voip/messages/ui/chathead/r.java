package com.viber.voip.messages.ui.chathead;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import com.viber.voip.registration.cp;

class r
  extends BroadcastReceiver
{
  r(d paramd) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("com.viber.voip.action.CLOSE_POPUP".equals(str)) {
      d.a(this.a, d.k(this.a));
    }
    long l;
    boolean bool2;
    as localas;
    MessageEntityImpl localMessageEntityImpl;
    ConversationEntityImpl localConversationEntityImpl;
    do
    {
      do
      {
        return;
      } while (!"com.viber.voip.action.MESSAGE_CHAT_HEADS".equals(str));
      l = paramIntent.getLongExtra("conversation", 0L);
      boolean bool1 = paramIntent.getBooleanExtra("pop_to_chat_head", false);
      bool2 = paramIntent.getBooleanExtra("from_message_fragment", false);
      if (l == 0L) {
        break label375;
      }
      if (d.g(this.a)) {
        break;
      }
      d.a(this.a, new cp(d.k(this.a)));
      if (bool1)
      {
        d.b(this.a, d.k(this.a), l, false, false);
        return;
      }
      localas = as.a();
      localMessageEntityImpl = localas.q(l);
      localConversationEntityImpl = localas.c(l);
    } while ((localConversationEntityImpl == null) || ((localMessageEntityImpl != null) && (localMessageEntityImpl.isSystemMessage())) || (localConversationEntityImpl.isMuteNotifications()) || (localConversationEntityImpl.isTrialPublicGroup()) || (localConversationEntityImpl.isPublicGroup()));
    int i;
    if (localMessageEntityImpl != null)
    {
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl = localas.j(localMessageEntityImpl.getParticipantId());
      if ((localParticipantInfoEntityImpl != null) && ((localParticipantInfoEntityImpl.getNumber() == d.O(this.a).f()) || (localParticipantInfoEntityImpl.getNumber().isEmpty())))
      {
        d.a("onReceive: own message(number is " + localConversationEntityImpl.getNumber() + ") and isConversationGroup: " + localConversationEntityImpl.isConversationGroup());
        return;
      }
      if ((localConversationEntityImpl.isSmartNotificationOn()) && (!localMessageEntityImpl.isNotification())) {
        i = 1;
      }
    }
    for (;;)
    {
      d locald = this.a;
      Context localContext = d.k(this.a);
      if (i == 0) {}
      for (boolean bool3 = true;; bool3 = false)
      {
        d.b(locald, localContext, l, bool3, false);
        return;
        i = 0;
        break;
      }
      if (!bool2) {
        break;
      }
      d.b(this.a, d.k(this.a), l, false, true);
      return;
      label375:
      d.a("onReceive: conversationId = 0");
      return;
      i = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.r
 * JD-Core Version:    0.7.0.1
 */