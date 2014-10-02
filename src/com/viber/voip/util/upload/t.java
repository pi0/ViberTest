package com.viber.voip.util.upload;

import android.net.Uri;
import com.viber.voip.util.http.HttpRequest;

final class t
  extends aa
{
  t(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    super(paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  protected void a(HttpRequest paramHttpRequest)
  {
    super.a(paramHttpRequest);
    if (e() == 0)
    {
      paramHttpRequest.addParam("Bucket", this.i);
      s.f("Bucket=" + this.i);
    }
  }
  
  public void b(Uri paramUri)
  {
    s.a(this.j, paramUri);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.t
 * JD-Core Version:    0.7.0.1
 */