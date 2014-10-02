package com.viber.voip.messages.ui;

import android.os.Handler;
import com.viber.voip.messages.controller.ae;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class ci
  implements ae
{
  ci(MessageComposerView paramMessageComposerView) {}
  
  public void a(MessageEntityImpl paramMessageEntityImpl)
  {
    if (paramMessageEntityImpl != null)
    {
      h.a(MessageComposerView.o(this.a), paramMessageEntityImpl.getMediaUri());
      MessageComposerView.p(this.a).post(new cj(this, paramMessageEntityImpl));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.ci
 * JD-Core Version:    0.7.0.1
 */