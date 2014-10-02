package com.viber.voip.registration;

import com.viber.voip.d.b;
import com.viber.voip.util.t;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;

public class ar
{
  private final bj a;
  private final String b;
  private au c;
  private CountryCode d;
  private boolean e;
  
  public ar(bj parambj, String paramString, au paramau)
  {
    this.a = parambj;
    this.b = paramString;
    this.c = paramau;
  }
  
  private void a(CountDownLatch paramCountDownLatch)
  {
    try
    {
      paramCountDownLatch.await();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }
  
  public CountryCode a(t paramt)
  {
    if ((this.e) && (this.d != null)) {
      return this.d;
    }
    CountryCode[] arrayOfCountryCode = new CountryCode[1];
    Exception[] arrayOfException = new Exception[1];
    b localb = new b();
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    new at(this, paramt, localb.a(this.b, null, new as(this, arrayOfCountryCode, arrayOfException, localCountDownLatch)));
    a(localCountDownLatch);
    if (arrayOfException[0] != null)
    {
      a(null);
      if (this.c != null) {
        this.c.a(null);
      }
      throw arrayOfException[0];
    }
    a(arrayOfCountryCode[0]);
    if (this.c != null) {
      this.c.a(arrayOfCountryCode[0]);
    }
    return arrayOfCountryCode[0];
  }
  
  public List<CountryCode> a()
  {
    bo localbo = new bo(this.a.a());
    av localav = new av(this.a);
    localbo.a(localav);
    localbo.a();
    localbo.c();
    Collections.sort(av.a(localav));
    return av.a(localav);
  }
  
  public void a(CountryCode paramCountryCode)
  {
    this.d = paramCountryCode;
    this.e = true;
  }
  
  public void a(au paramau)
  {
    try
    {
      this.c = paramau;
      if (this.e) {
        paramau.a(this.d);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.ar
 * JD-Core Version:    0.7.0.1
 */