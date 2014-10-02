package com.viber.voip.rakuten;

import android.os.AsyncTask;
import com.viber.voip.registration.bw;
import com.viber.voip.registration.bx;
import java.io.IOException;

class p
  extends AsyncTask<Void, Void, bx>
{
  private p(l paraml) {}
  
  protected bx a(Void... paramVarArgs)
  {
    l.b("RegistrationPart2Task start");
    try
    {
      bx localbx = (bx)new bw(l.b(this.a), l.c(this.a)).c();
      return localbx;
    }
    catch (IOException localIOException)
    {
      l.a("RegistrationPart2Task failed", localIOException);
      return null;
    }
    finally
    {
      l.b("RegistrationPart2Task end");
    }
  }
  
  protected void a(bx parambx)
  {
    l.a(this.a, null);
    if ((parambx != null) && (parambx.a()))
    {
      l.b("RegistrationPart2Task saving rToken " + l.c(this.a));
      this.a.a(l.c(this.a));
      l.d(this.a);
      l.a(this.a, r.e);
      return;
    }
    l.b("RegistrationPart2Task invalid response");
    l.d(this.a);
    l.a(this.a, r.f);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.rakuten.p
 * JD-Core Version:    0.7.0.1
 */