package com.viber.voip.messages.ui;

import android.net.Uri;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.conversation.ao;
import com.viber.voip.messages.d;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.ui.media.SendMediaDataContainer;
import java.util.ArrayList;

class cd
  implements Runnable
{
  cd(MessageComposerView paramMessageComposerView, ArrayList paramArrayList) {}
  
  public void run()
  {
    MessageEntityImpl[] arrayOfMessageEntityImpl = new MessageEntityImpl[this.a.size()];
    for (int i = 0; i < this.a.size(); i++)
    {
      SendMediaDataContainer localSendMediaDataContainer = (SendMediaDataContainer)this.a.get(i);
      MessageEntityImpl localMessageEntityImpl = MessageComposerView.m(this.b).a(localSendMediaDataContainer.d, localSendMediaDataContainer.a.toString(), localSendMediaDataContainer.e);
      localMessageEntityImpl.setDuration(localSendMediaDataContainer.f);
      localMessageEntityImpl.addExtraFlag(localSendMediaDataContainer.i);
      localMessageEntityImpl.setExtraStatus(2);
      localMessageEntityImpl.setStatus(4);
      localMessageEntityImpl.setThumbnailHeight(localSendMediaDataContainer.h);
      localMessageEntityImpl.setThumbnailWidth(localSendMediaDataContainer.g);
      localMessageEntityImpl.setDate(localMessageEntityImpl.getDate() + i);
      if (this.b.a()) {
        localMessageEntityImpl.setExtraStatus(0);
      }
      if (localSendMediaDataContainer.c != null) {
        localMessageEntityImpl.setBody(localSendMediaDataContainer.c.toString());
      }
      arrayOfMessageEntityImpl[i] = localMessageEntityImpl;
    }
    MessageComposerView.A(this.b).a(arrayOfMessageEntityImpl);
    MessageComposerView.B(this.b).c().b();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.cd
 * JD-Core Version:    0.7.0.1
 */