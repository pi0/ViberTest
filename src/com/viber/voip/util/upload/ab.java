package com.viber.voip.util.upload;

import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.util.http.HttpRequest;

public class ab
  extends aa
{
  public ab(ak paramak, String paramString1, String paramString2, int paramInt, String paramString3, String paramString4)
  {
    super(a(paramak, paramString1, paramString2, paramInt), paramString3, paramString4, paramString2, paramString1);
  }
  
  private static String a(ak paramak, String paramString1, String paramString2, int paramInt)
  {
    String str = bc.b().r + "?" + "type" + "=" + paramak.b() + "&" + "filetype" + "=" + paramString1 + "&" + "id" + "=" + paramString2;
    if (paramInt != 0) {
      str = str + "&imagesize=" + paramInt;
    }
    return str;
  }
  
  protected void a(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.setFollowRedirects(false);
    if (e() == 1) {
      this.k.c = b();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.ab
 * JD-Core Version:    0.7.0.1
 */