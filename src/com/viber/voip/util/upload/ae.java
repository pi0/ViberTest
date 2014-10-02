package com.viber.voip.util.upload;

import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.util.bj;

final class ae
  implements p
{
  ae(p paramp, Uri paramUri, MessageEntityImpl paramMessageEntityImpl) {}
  
  public void a(Uri paramUri)
  {
    this.a.a(this.b);
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    this.a.a(this.b, paramInt);
  }
  
  public void a(Uri paramUri, String paramString)
  {
    Uri localUri = this.c.getThumbnailUri();
    if ((localUri != null) && (bj.a(ViberApplication.getInstance(), localUri) > 0L))
    {
      ac.a(this.b, localUri, paramString, this.a);
      return;
    }
    ac.a("CAN'T UPLOAD EMPTY THUMBNAIL thumbnailUri: " + localUri);
    this.a.a(this.b, paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.ae
 * JD-Core Version:    0.7.0.1
 */