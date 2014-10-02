package com.viber.voip.billing;

import com.viber.voip.ViberApplication;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.registration.cp;
import java.util.Map;

class h
  extends ac
{
  h(a parama, bu parambu, bq parambq, al paramal)
  {
    super(parama);
  }
  
  public String a()
  {
    return bc.b().V + a.c() + "/products/android/purchase";
  }
  
  public void a(m paramm)
  {
    this.c.a(paramm);
  }
  
  public void a(Map<String, String> paramMap)
  {
    paramMap.put("receipt", this.a.i());
    paramMap.put("signature", this.a.j());
    paramMap.put("udid", ViberApplication.getInstance().getHardwareParameters().getUdid());
    paramMap.put("phone_country", ViberApplication.getInstance().getRegistrationValues().c());
    paramMap.put("price_string", this.b.b());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.h
 * JD-Core Version:    0.7.0.1
 */