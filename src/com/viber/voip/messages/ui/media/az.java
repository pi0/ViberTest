package com.viber.voip.messages.ui.media;

import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.ac;
import com.viber.voip.messages.controller.b.b;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class az
  implements ac
{
  az(ViewMediaActivity paramViewMediaActivity, SendMediaDataContainer paramSendMediaDataContainer) {}
  
  public void a(ConversationEntityImpl paramConversationEntityImpl)
  {
    MessageEntityImpl localMessageEntityImpl = new b(paramConversationEntityImpl.getGroupId(), paramConversationEntityImpl.getNumber(), paramConversationEntityImpl.getConversationType()).a(this.a.d, this.a.a.toString(), this.a.e);
    localMessageEntityImpl.setDuration(this.a.f);
    localMessageEntityImpl.addExtraFlag(this.a.i);
    localMessageEntityImpl.setConversationId(paramConversationEntityImpl.getId());
    if (this.a.c != null)
    {
      localMessageEntityImpl.setBody(this.a.c.toString());
      localMessageEntityImpl.setThumbnailHeight(this.a.h);
      localMessageEntityImpl.setThumbnailWidth(this.a.g);
    }
    ViberApplication.getInstance().getMessagesManager().c().a(localMessageEntityImpl);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.az
 * JD-Core Version:    0.7.0.1
 */