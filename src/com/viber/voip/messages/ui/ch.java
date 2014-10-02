package com.viber.voip.messages.ui;

import android.text.TextUtils;
import com.viber.voip.a.a;
import com.viber.voip.a.ac;
import com.viber.voip.a.am;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;
import com.viber.voip.a.x;
import com.viber.voip.messages.d;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class ch
  implements Runnable
{
  ch(MessageComposerView paramMessageComposerView, MessageEntityImpl paramMessageEntityImpl) {}
  
  public void run()
  {
    MessageEntityImpl localMessageEntityImpl = MessageComposerView.m(this.b).a(this.a);
    if ((!"sticker".equals(localMessageEntityImpl.getMimeType())) && (!"animated_message".equals(localMessageEntityImpl.getMimeType())) && (!this.a.isPublicGroup()))
    {
      localMessageEntityImpl.setDownloadId("");
      localMessageEntityImpl.setObjectId(0L);
    }
    if ("sms".equals(localMessageEntityImpl.getMimeType())) {
      localMessageEntityImpl.setMimeType("text");
    }
    localMessageEntityImpl.addExtraFlag(6);
    if (this.a.isPublicGroup()) {
      localMessageEntityImpl.addExtraFlag(7);
    }
    this.b.a(localMessageEntityImpl, true);
    int i;
    if ("text".equals(localMessageEntityImpl.getMimeType()))
    {
      bc localbc3 = bc.a();
      x localx3 = MessageComposerView.f(this.b).c();
      if (TextUtils.isEmpty(localMessageEntityImpl.getBody()))
      {
        i = 0;
        localbc3.a(localx3.a(Long.valueOf(i)));
      }
    }
    do
    {
      return;
      i = localMessageEntityImpl.getBody().length();
      break;
      if ("image".equals(localMessageEntityImpl.getMimeType()))
      {
        bc localbc2 = bc.a();
        if (TextUtils.isEmpty(localMessageEntityImpl.getDescription())) {}
        for (x localx2 = a.m.c();; localx2 = a.m.a(localMessageEntityImpl.getDescription().length()))
        {
          localbc2.a(localx2);
          return;
        }
      }
      if ("video".equals(localMessageEntityImpl.getMimeType()))
      {
        bc localbc1 = bc.a();
        if (TextUtils.isEmpty(localMessageEntityImpl.getDescription())) {}
        for (x localx1 = a.m.d();; localx1 = a.m.b(localMessageEntityImpl.getDescription().length()))
        {
          localbc1.a(localx1);
          return;
        }
      }
      if ("sticker".equals(localMessageEntityImpl.getMimeType()))
      {
        bc.a().a(MessageComposerView.f(this.b).b.b(Long.toString(localMessageEntityImpl.getObjectId())));
        return;
      }
    } while (!"location".equals(localMessageEntityImpl.getMimeType()));
    bc.a().a(MessageComposerView.f(this.b).e());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.ch
 * JD-Core Version:    0.7.0.1
 */