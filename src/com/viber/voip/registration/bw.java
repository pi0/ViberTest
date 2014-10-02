package com.viber.voip.registration;

import com.viber.voip.bc;
import com.viber.voip.bd;

public class bw
  extends bs<bx>
{
  public bw(String paramString1, String paramString2)
  {
    super(bc.b().f, "SetRTokenRequest", "SetRTokenResponse", paramString1);
    b("RToken", paramString2);
  }
  
  protected bx a()
  {
    return new bx();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.bw
 * JD-Core Version:    0.7.0.1
 */