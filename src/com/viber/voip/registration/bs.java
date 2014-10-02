package com.viber.voip.registration;

import com.viber.voip.billing.a;
import com.viber.voip.billing.an;
import java.io.IOException;

public abstract class bs<RES extends bt>
  extends cq<RES>
{
  protected bs(String paramString1, String paramString2, String paramString3, CharSequence paramCharSequence)
  {
    super(paramString1, paramString2, paramString3);
    b("UDID", paramCharSequence.toString());
    an localan = a.b();
    if (localan == null) {
      throw new IOException("invalid token");
    }
    c("phone_number", a.c());
    c("token", localan.b);
    c("ts", Long.toString(localan.a));
  }
  
  protected void a(String paramString1, String paramString2)
  {
    if ("Status".equals(paramString1)) {
      ((bt)this.f).b = Integer.parseInt(paramString2);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.bs
 * JD-Core Version:    0.7.0.1
 */