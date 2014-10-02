package com.viber.voip.registration;

import java.util.ArrayList;
import java.util.List;

class av
  implements bp
{
  private final bj a;
  private final List<CountryCode> b = new ArrayList(250);
  
  public av(bj parambj)
  {
    this.a = parambj;
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str = this.a.a(paramString3);
    this.b.add(new CountryCode(paramString1, paramString2, str, paramString4));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.av
 * JD-Core Version:    0.7.0.1
 */