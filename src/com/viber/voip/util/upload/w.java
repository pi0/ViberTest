package com.viber.voip.util.upload;

import android.net.Uri;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

final class w
  extends ab
{
  w(ak paramak, String paramString1, String paramString2, int paramInt, String paramString3, String paramString4, MessageEntityImpl paramMessageEntityImpl, String paramString5)
  {
    super(paramak, paramString1, paramString2, paramInt, paramString3, paramString4);
  }
  
  public void b(Uri paramUri)
  {
    if (!this.i.isPublicWatcher()) {
      s.a(this.j, paramUri);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.w
 * JD-Core Version:    0.7.0.1
 */