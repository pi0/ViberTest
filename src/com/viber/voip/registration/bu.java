package com.viber.voip.registration;

import com.viber.voip.bc;
import com.viber.voip.bd;

public class bu
  extends bs<bv>
{
  public bu(String paramString1, String paramString2)
  {
    super(bc.b().g, "SetRReferralRequest", "SetRReferralResponse", paramString1);
    b("RReferral", paramString2);
  }
  
  protected bv a()
  {
    return new bv();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.bu
 * JD-Core Version:    0.7.0.1
 */