package com.viber.voip.messages.controller;

import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.viber.voip.messages.extras.image.a;
import com.viber.voip.messages.extras.image.m;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.util.hv;
import com.viber.voip.util.upload.b;

class ck
  implements b
{
  ck(ce paramce, MessageEntityImpl paramMessageEntityImpl, cn paramcn) {}
  
  public void a(Uri paramUri)
  {
    long l = m.a(ce.b(this.c), paramUri, this.a.getMimeType());
    if ((TextUtils.isEmpty(this.a.getBody())) || (this.a.getBody().startsWith(hv.a))) {}
    for (Uri localUri = null;; localUri = Uri.parse(this.a.getBody()))
    {
      a locala = m.a(ce.b(this.c), paramUri, localUri);
      ce.a(this.c).post(new cl(this, l, paramUri, locala));
      return;
    }
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    ce.a(this.c, "DownloadMedia.onFail():error = " + paramInt);
    ce.a(this.c).post(new cm(this, paramInt));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.ck
 * JD-Core Version:    0.7.0.1
 */