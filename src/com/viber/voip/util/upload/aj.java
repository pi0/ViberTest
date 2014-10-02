package com.viber.voip.util.upload;

import android.content.ContentResolver;
import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.util.an;
import com.viber.voip.util.bj;
import com.viber.voip.util.http.HttpRequest;
import java.util.Map;

class aj
  extends ah
{
  private String d;
  private String e;
  private int f;
  private long g;
  
  public aj(Uri paramUri, ak paramak, String paramString1, String paramString2, int paramInt, p paramp)
  {
    super(paramUri, paramak, paramp);
    this.d = paramString1;
    this.e = paramString2;
    this.f = paramInt;
  }
  
  protected HttpRequest a()
  {
    String str1 = bc.b().q;
    this.g = bj.a(ViberApplication.getInstance(), this.a);
    if (this.g == 0L) {
      throw new IllegalArgumentException("File size is 0. Nothing to upload");
    }
    String str2 = ac.b(this.a);
    String str3 = ac.e();
    an localan = new an(str1);
    ac.d().put(this.a, localan);
    localan.setPost(true, true);
    localan.setConnectTimeout(120000);
    localan.setReadTimeout(120000);
    localan.addParam("udid", str3);
    localan.addParam("type", this.c.b());
    localan.addParam("filesize", Long.toString(this.g));
    localan.addParam("filetype", this.d);
    localan.addParam("checksum", str2);
    if (this.e != null) {
      localan.addParam("object_id", this.e);
    }
    if (this.f > 0) {
      localan.addParam("imagesize", Integer.toString(this.f));
    }
    localan.addParam("file", ac.f().openInputStream(this.a), null, "file");
    return localan;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.aj
 * JD-Core Version:    0.7.0.1
 */