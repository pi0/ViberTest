package com.viber.voip.util.upload;

import com.viber.voip.util.http.HttpRequest;

final class x
  extends aa
{
  x(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
  {
    super(paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  protected void a(HttpRequest paramHttpRequest)
  {
    super.a(paramHttpRequest);
    if ((e() == 0) && (this.i))
    {
      paramHttpRequest.addParam("Imagesize", "720");
      s.f("Imagesize=720");
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.x
 * JD-Core Version:    0.7.0.1
 */