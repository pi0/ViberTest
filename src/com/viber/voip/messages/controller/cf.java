package com.viber.voip.messages.controller;

import android.net.Uri;
import android.os.Handler;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.util.upload.p;

class cf
  implements p
{
  cf(ce paramce, co paramco, MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean) {}
  
  public void a(Uri paramUri)
  {
    ce.a(this.d, "uploadMedia.onUploadTimeout()");
    if (this.c) {
      ce.a(this.d).post(new cj(this));
    }
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    ce.a(this.d, "uploadMedia.onFail() code = " + paramInt);
    switch (paramInt)
    {
    default: 
      if (this.c) {
        ce.a(this.d).post(new ci(this));
      }
      return;
    }
    ce.a(this.d).post(new ch(this));
  }
  
  public void a(Uri paramUri, String paramString)
  {
    ce.a(this.d).post(new cg(this, paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.cf
 * JD-Core Version:    0.7.0.1
 */