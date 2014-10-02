package com.viber.voip.rakuten;

import android.os.AsyncTask;
import com.viber.voip.registration.bq;
import com.viber.voip.registration.br;
import com.viber.voip.registration.bu;
import java.io.IOException;

class o
  extends AsyncTask<Void, Void, br>
{
  private o(l paraml) {}
  
  protected br a(Void... paramVarArgs)
  {
    l.b("RegistrationPart1Task.doInBackground start");
    try
    {
      if (l.a(this.a) != null)
      {
        l.b("RegistrationPart1Task.doInBackground: sending referral");
        new bu(l.b(this.a), l.a(this.a)).c();
      }
      if (l.c(this.a) != null)
      {
        l.b("RegistrationPart1Task.doInBackground: obtaining RID");
        br localbr = (br)new bq(l.b(this.a), l.c(this.a)).c();
        return localbr;
      }
      return null;
    }
    catch (IOException localIOException)
    {
      l.a("RegistrationPart1Task failed", localIOException);
      return null;
    }
    finally
    {
      l.b("RegistrationPart1Task.doInBackground end");
    }
  }
  
  protected void a(br parambr)
  {
    l.b("RegistrationPart1Task.onPostExecute");
    l.a(this.a, null);
    if (parambr == null)
    {
      l.b("RegistrationPart1Task.onPostExecute empty response (IOException or no RakutenGetRIDRequest executed)");
      l.d(this.a);
      l.a(this.a, r.a);
      return;
    }
    if (parambr.a())
    {
      l.b("RegistrationPart1Task.onPostExecute response OK, rakutenAccountId: " + parambr.a);
      l.a(this.a, parambr.a);
      l.a(this.a, r.c);
      return;
    }
    l.b("RegistrationPart1Task.onPostExecute invalid response");
    l.d(this.a);
    l.a(this.a, r.f);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.rakuten.o
 * JD-Core Version:    0.7.0.1
 */