package com.viber.voip.registration;

import android.os.AsyncTask;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.t;

class q
  extends AsyncTask<Void, Integer, Void>
{
  private final t b = new t();
  
  private q(ActivationController paramActivationController) {}
  
  protected Void a(Void... paramVarArgs)
  {
    try
    {
      ViberApplication.getInstance().getCountryCodeManager().a(this.b);
      return null;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        ViberApplication.log(6, "CountryCodeLoader", localException.getMessage(), localException);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.q
 * JD-Core Version:    0.7.0.1
 */