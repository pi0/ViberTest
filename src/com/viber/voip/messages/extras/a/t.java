package com.viber.voip.messages.extras.a;

import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.map.d;
import com.viber.voip.registration.CountryCode;
import com.viber.voip.registration.ar;

class t
  implements Runnable
{
  t(e parame, b paramb) {}
  
  public void run()
  {
    try
    {
      CountryCode localCountryCode = ViberApplication.getInstance().getCountryCodeManager().a(new com.viber.voip.util.t());
      if (localCountryCode != null) {
        new d(null, null).a(localCountryCode.c(), new u(this, localCountryCode));
      }
      return;
    }
    catch (Exception localException)
    {
      e.a("getWPSLocation obtainCurrentCountry Exception:" + localException.getMessage());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.t
 * JD-Core Version:    0.7.0.1
 */