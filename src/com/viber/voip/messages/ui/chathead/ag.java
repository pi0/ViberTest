package com.viber.voip.messages.ui.chathead;

import android.net.Uri;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.ConversationEntity;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

class ag
  implements Runnable
{
  ag(af paramaf, Set paramSet) {}
  
  public void run()
  {
    Iterator localIterator = d.t(this.b.a).iterator();
    b localb;
    as localas;
    MessageEntityImpl localMessageEntityImpl;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localb = (b)localIterator.next();
        if ((localb.b() != null) && (this.a.contains(Long.valueOf(localb.b().getId()))))
        {
          localas = as.a();
          if (localb.b().isConversationGroup())
          {
            localMessageEntityImpl = localas.q(localb.b().getId());
            if (localMessageEntityImpl == null) {
              break label173;
            }
          }
        }
      }
    }
    label173:
    for (ParticipantInfoEntityImpl localParticipantInfoEntityImpl2 = localas.j(localMessageEntityImpl.getParticipantId());; localParticipantInfoEntityImpl2 = null)
    {
      ParticipantInfoEntityImpl localParticipantInfoEntityImpl1 = localParticipantInfoEntityImpl2;
      for (Uri localUri = null;; localUri = localParticipantInfoEntityImpl1.getCommonContactImage(false))
      {
        d.a(this.b.a, d.k(this.b.a), localUri, localb, localParticipantInfoEntityImpl1);
        break;
        localParticipantInfoEntityImpl1 = localas.c(localb.b().getNumber());
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.ag
 * JD-Core Version:    0.7.0.1
 */