package com.viber.voip.contacts.c;

import android.net.Uri;
import com.viber.voip.util.upload.b;

final class e
  implements b
{
  e(r paramr) {}
  
  public void a(Uri paramUri)
  {
    a.c("onDownloadComplete path = " + paramUri);
    if (this.a != null) {
      this.a.a(paramUri.toString());
    }
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    a.c("onFail errorCode = " + paramInt);
    if (this.a != null) {
      this.a.a();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.e
 * JD-Core Version:    0.7.0.1
 */