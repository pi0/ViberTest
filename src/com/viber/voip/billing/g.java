package com.viber.voip.billing;

import com.viber.voip.ViberApplication;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.registration.cp;
import java.util.Map;

class g
  extends ac
{
  g(a parama, bt parambt, p paramp)
  {
    super(parama);
  }
  
  public String a()
  {
    return bc.b().V + a.c() + "/products/add";
  }
  
  public void a(m paramm)
  {
    this.b.a(paramm);
  }
  
  public void a(Map<String, String> paramMap)
  {
    paramMap.put("product_id", this.a.toString());
    paramMap.put("udid", ViberApplication.getInstance().getHardwareParameters().getUdid());
    paramMap.put("phone_country", ViberApplication.getInstance().getRegistrationValues().c());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.g
 * JD-Core Version:    0.7.0.1
 */