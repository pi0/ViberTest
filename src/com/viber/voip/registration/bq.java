package com.viber.voip.registration;

import com.viber.voip.bc;
import com.viber.voip.bd;

public class bq
  extends bs<br>
{
  public bq(CharSequence paramCharSequence, String paramString)
  {
    super(bc.b().e, "GetRIDRequest", "GetRIDResponse", paramCharSequence);
    b("RToken", paramString);
  }
  
  protected br a()
  {
    return new br();
  }
  
  protected void a(String paramString1, String paramString2)
  {
    super.a(paramString1, paramString2);
    if ("RID".equals(paramString1)) {
      ((br)this.f).a = paramString2;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.bq
 * JD-Core Version:    0.7.0.1
 */