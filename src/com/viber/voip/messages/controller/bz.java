package com.viber.voip.messages.controller;

import android.net.Uri;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.extras.image.a;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.util.b.w;

class bz
  implements cn
{
  bz(by paramby, MessageEntityImpl paramMessageEntityImpl) {}
  
  public void a(int paramInt)
  {
    MessageEntityImpl localMessageEntityImpl = by.a(this.b).m(this.a.getId());
    if ((localMessageEntityImpl != null) && (localMessageEntityImpl.isIncoming()))
    {
      localMessageEntityImpl.setStatus(-1);
      by.a(this.b, localMessageEntityImpl, true);
    }
  }
  
  public void a(long paramLong, Uri paramUri, a parama)
  {
    MessageEntityImpl localMessageEntityImpl = by.a(this.b).m(this.a.getId());
    if (localMessageEntityImpl != null)
    {
      localMessageEntityImpl.setDuration(paramLong);
      localMessageEntityImpl.setMediaUri(paramUri.toString());
      localMessageEntityImpl.setExtraStatus(3);
      if ((parama != null) && (parama.a != null))
      {
        localMessageEntityImpl.setBody(parama.a.toString());
        localMessageEntityImpl.setThumbnailHeight(parama.c);
        localMessageEntityImpl.setThumbnailWidth(parama.b);
        by.a(this.b, new ca(this, localMessageEntityImpl));
        by.d(this.b).a(parama.a, by.b(this.b), by.c(this.b));
      }
    }
    else
    {
      return;
    }
    by.a(this.b, localMessageEntityImpl, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.bz
 * JD-Core Version:    0.7.0.1
 */