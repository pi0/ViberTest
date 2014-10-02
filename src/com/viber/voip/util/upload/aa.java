package com.viber.voip.util.upload;

import android.net.Uri;
import com.viber.voip.util.http.HttpRequest;
import java.io.File;

public class aa
  extends d
{
  private String i;
  private String j;
  protected z k;
  
  protected aa(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paramString1, paramString2, paramString3);
    this.i = paramString4;
    this.k = new z();
    this.k.a = l();
    this.k.d = k();
    this.k.c = paramString1;
  }
  
  public aa(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    super(paramString1, paramString2, paramString3);
    this.j = paramString5;
    this.i = paramString4;
    this.k = new z();
    this.k.a = l();
    this.k.d = k();
    this.k.c = paramString1;
  }
  
  protected void a(int paramInt)
  {
    this.k.b = paramInt;
  }
  
  protected void a(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.setFollowRedirects(false);
    if (e() == 0)
    {
      paramHttpRequest.setPost(true);
      paramHttpRequest.addParam("ID", this.i);
      s.f("ID=" + this.i);
      paramHttpRequest.addParam("Filetype", this.j);
      s.f("Filetype=" + this.j);
    }
    while (e() != 1) {
      return;
    }
    String str = b();
    this.k.c = str;
  }
  
  protected boolean a(File paramFile)
  {
    boolean bool = s.d(this.i);
    if (bool) {
      s.e(paramFile.getAbsolutePath());
    }
    return !bool;
  }
  
  public void b(Uri paramUri) {}
  
  public z m()
  {
    return this.k;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.aa
 * JD-Core Version:    0.7.0.1
 */