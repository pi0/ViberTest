package com.viber.voip.messages.extras.twitter;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import com.viber.dexshared.TwitterHelper;
import com.viber.voip.a.a;
import com.viber.voip.a.an;
import com.viber.voip.a.ao;
import com.viber.voip.a.aq;
import com.viber.voip.a.bc;
import com.viber.voip.util.at;

class v
  extends AsyncTask<Void, Void, String>
{
  private Activity b;
  private ProgressDialog c;
  
  public v(l paraml, Activity paramActivity)
  {
    this.b = paramActivity;
  }
  
  protected String a(Void... paramVarArgs)
  {
    String str = l.a(this.a).getTwitterAuthorizationURL("viber-twitter://callback");
    if (str.startsWith("error:")) {
      return l.b(this.a, str);
    }
    l.c(this.a, str);
    return null;
  }
  
  protected void a(String paramString)
  {
    super.onPostExecute(paramString);
    if (this.c.isShowing())
    {
      at.a(this.c);
      bc.a().a(a.i.a.b(aq.b));
    }
    if (paramString != null)
    {
      bc.a().a(a.i.a.b(aq.b, paramString));
      l.a(this.a, paramString, true);
    }
  }
  
  protected void onPreExecute()
  {
    this.c = new ProgressDialog(this.b);
    this.c.setMessage(this.b.getString(2131493676));
    this.c.show();
    super.onPreExecute();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.v
 * JD-Core Version:    0.7.0.1
 */