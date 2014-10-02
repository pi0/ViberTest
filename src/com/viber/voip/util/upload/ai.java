package com.viber.voip.util.upload;

import android.content.ContentResolver;
import android.net.Uri;
import com.viber.logger.QaLogger;
import com.viber.logger.QaLogger.QaPhotoUploadFinishEvent;
import com.viber.logger.QaLogger.QaPhotoUploadStartEvent;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.util.bj;
import com.viber.voip.util.http.HttpRequest;

class ai
  extends ah
{
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  
  public ai(Uri paramUri, ak paramak, String paramString1, String paramString2, String paramString3, p paramp)
  {
    super(paramUri, paramak, paramp);
    this.d = paramString1;
    this.e = paramString2;
    this.f = paramString3;
  }
  
  protected HttpRequest a()
  {
    long l = bj.a(ViberApplication.getInstance(), this.a);
    if (l == 0L) {
      throw new IllegalArgumentException("File size is 0. Nothing to upload");
    }
    this.h = String.valueOf(l);
    String str1 = ac.b(this.a);
    String str2 = ac.e();
    this.g = n.a(this.e);
    QaLogger.a(new QaLogger.QaPhotoUploadStartEvent(this.a + "", this.g));
    int i;
    String str3;
    if (this.c == ak.a)
    {
      i = 1;
      switch (ag.a[this.c.ordinal()])
      {
      default: 
        str3 = null;
      }
    }
    for (;;)
    {
      HttpRequest localHttpRequest = ViberEnv.newHttpRequest(str3);
      localHttpRequest.setPost(true, true);
      localHttpRequest.setRequestHeader("X-Filesize", this.h);
      localHttpRequest.setRequestHeader("X-Checksum", str1);
      localHttpRequest.setConnectTimeout(120000);
      localHttpRequest.setReadTimeout(120000);
      if (i != 0) {
        localHttpRequest.setRequestHeader("X-Offset", "");
      }
      localHttpRequest.addParam("UDID", str2);
      if (i != 0) {
        localHttpRequest.addParam("Seq", this.d);
      }
      if (this.c == ak.c)
      {
        localHttpRequest.addParam("Imagesize", "720");
        localHttpRequest.addParam("ObjectID", this.f);
      }
      localHttpRequest.addParam("Filetype", this.g);
      localHttpRequest.addParam("File", ac.f().openInputStream(this.a), null, "file");
      ac.a("FileUploadTask start EXECUTE");
      return localHttpRequest;
      i = 0;
      break;
      str3 = bc.b().o;
      continue;
      str3 = bc.b().p;
    }
  }
  
  protected void a(r paramr)
  {
    switch (paramr.a)
    {
    default: 
      return;
    }
    QaLogger.a(new QaLogger.QaPhotoUploadFinishEvent(this.a.toString(), this.g, this.h));
  }
  
  protected String b()
  {
    return this.f;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.ai
 * JD-Core Version:    0.7.0.1
 */