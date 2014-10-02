package com.viber.voip.messages.extras.twitter;

import android.app.Activity;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import com.viber.dexshared.TwitterHelper;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ao;
import com.viber.voip.a.aq;
import com.viber.voip.a.aw;
import com.viber.voip.a.bc;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.messages.i;
import java.io.File;

class w
  extends AsyncTask<Void, Void, String>
{
  private Activity b;
  private long c;
  private Uri d;
  private String e;
  
  public w(l paraml, Activity paramActivity, long paramLong, Uri paramUri, String paramString)
  {
    this.b = paramActivity;
    this.c = paramLong;
    this.d = paramUri;
    this.e = paramString;
  }
  
  protected String a(Void... paramVarArgs)
  {
    File localFile = new File(h.a(this.b, this.d));
    if ((localFile != null) && (localFile.exists()))
    {
      String str = l.a(this.a).uploadImage(localFile, this.e);
      if (str == null) {
        str = "error";
      }
      while (str.length() > 0) {
        return str;
      }
      return null;
    }
    return this.b.getResources().getString(2131493953);
  }
  
  protected void a(String paramString)
  {
    super.onPostExecute(paramString);
    this.b.finish();
    if (paramString != null)
    {
      bc.a().a(l.e(this.a).a.a(aq.b, paramString));
      ViberApplication.getInstance().getMessagesManager().c().b(this.c, 3);
      l.a(this.a, paramString, false);
      l.d(this.a, paramString);
      return;
    }
    ViberApplication.getInstance().getMessagesManager().c().b(this.c, 2);
    l.f(this.a);
  }
  
  protected void onPreExecute()
  {
    ViberApplication.getInstance().getMessagesManager().c().b(this.c, 1);
    l.d(this.a);
    super.onPreExecute();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.w
 * JD-Core Version:    0.7.0.1
 */