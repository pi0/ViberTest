package com.viber.voip.messages.extras.twitter;

import android.os.AsyncTask;
import com.viber.dexshared.TwitterHelper;

class u
  extends AsyncTask<String, Void, String>
{
  private u(l paraml) {}
  
  protected String a(String... paramVarArgs)
  {
    String str1 = paramVarArgs[0];
    String[] arrayOfString = l.a(this.a).getOAuthAccessTokenTask(str1);
    String str2;
    if (arrayOfString.length == 1) {
      str2 = arrayOfString[0];
    }
    t localt;
    do
    {
      return str2;
      l.a(this.a, "OAuthAccessTokenTask name=" + arrayOfString[0] + ", token=" + arrayOfString[1] + ", tokenSecret=" + arrayOfString[2]);
      l.b(this.a).a(arrayOfString[1], arrayOfString[2], arrayOfString[0]);
      localt = l.c(this.a);
      str2 = null;
    } while (localt == null);
    l.c(this.a).onAuthComplete();
    return null;
  }
  
  protected void a(String paramString)
  {
    super.onPostExecute(paramString);
    if (paramString != null) {
      l.a(this.a, paramString, true);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.u
 * JD-Core Version:    0.7.0.1
 */