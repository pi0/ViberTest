package com.viber.voip.messages.controller.a;

import android.net.Uri;
import com.viber.voip.util.upload.p;

class bu
  implements p
{
  bu(br parambr, bx parambx, Uri paramUri) {}
  
  public void a(Uri paramUri)
  {
    br.a(this.c, "doUpdateUserPhoto uploadMedia.onUploadTimeout()");
    this.a.a(null);
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    br.a(this.c, "doUpdateUserPhoto uploadMedia.onFail() code = " + paramInt);
    this.a.a(null);
  }
  
  public void a(Uri paramUri, String paramString)
  {
    br.a(this.c, "doUpdateUserPhoto uploadMedia.onUploadComplete() id = " + paramString);
    this.a.a(paramString, this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bu
 * JD-Core Version:    0.7.0.1
 */