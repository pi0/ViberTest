package com.viber.voip.registration;

import com.viber.voip.ViberApplication;
import com.viber.voip.d.b;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

public class dg
{
  private final String a;
  
  public dg(String paramString)
  {
    this.a = paramString;
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
  
  public df a(String paramString1, String paramString2, String paramString3)
  {
    df[] arrayOfdf = new df[1];
    IOException[] arrayOfIOException = new IOException[1];
    b localb = new b();
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    String str1 = di.a(paramString1, paramString2, paramString3);
    localb.a(this.a, str1, new dh(this, arrayOfdf, arrayOfIOException, localCountDownLatch));
    a(localCountDownLatch);
    StringBuilder localStringBuilder = new StringBuilder().append("UpdatePhoneMRequestBuilder.invokeUpdatePushToken(): ").append(arrayOfdf[0]).append("; ex: ");
    if (arrayOfIOException[0] != null) {}
    for (String str2 = arrayOfIOException[0].getMessage();; str2 = " no")
    {
      ViberApplication.log(4, "-trace-", str2);
      return arrayOfdf[0];
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.dg
 * JD-Core Version:    0.7.0.1
 */