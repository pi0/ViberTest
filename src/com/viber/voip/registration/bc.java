package com.viber.voip.registration;

import com.viber.voip.ViberApplication;
import com.viber.voip.d.b;
import com.viber.voip.util.am;
import com.viber.voip.util.t;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

public class bc
{
  private final String a;
  
  public bc(String paramString)
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
  
  public df a(String paramString1, String paramString2, String paramString3, t paramt)
  {
    df[] arrayOfdf = new df[1];
    IOException[] arrayOfIOException = new IOException[1];
    b localb = new b();
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    String str = bf.a(paramString1, paramString2, paramString3);
    new be(this, paramt, localb.a(this.a, str, new bd(this, arrayOfdf, arrayOfIOException, localCountDownLatch)));
    a(localCountDownLatch);
    if (arrayOfIOException[0] != null)
    {
      ViberApplication.log(6, "-trace-", arrayOfIOException[0].getMessage(), arrayOfIOException[0]);
      return null;
    }
    if ((!am.c) && (arrayOfIOException[0] != null)) {
      throw arrayOfIOException[0];
    }
    return arrayOfdf[0];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.bc
 * JD-Core Version:    0.7.0.1
 */