package com.viber.voip.billing;

import com.viber.voip.bc;
import com.viber.voip.bd;
import java.util.Map;

class i
  extends k
{
  i(a parama, bu parambu, bq parambq, am paramam)
  {
    super(parama);
  }
  
  public String a()
  {
    return bc.b().N + a.c() + "/products/android/purchase";
  }
  
  public void a(m paramm)
  {
    this.c.a(paramm);
  }
  
  public void a(Map<String, String> paramMap)
  {
    String str1 = this.a.i();
    String str2 = this.a.j();
    String str3 = do.a(str1, this.b.b());
    paramMap.put("receipt", str1);
    paramMap.put("signature", str2);
    paramMap.put("tss", str3);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.i
 * JD-Core Version:    0.7.0.1
 */