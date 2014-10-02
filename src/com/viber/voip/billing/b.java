package com.viber.voip.billing;

import java.util.concurrent.CountDownLatch;

final class b
  extends com.viber.voip.process.a.a
{
  b(CountDownLatch paramCountDownLatch) {}
  
  public void a(long paramLong, String paramString)
  {
    if ((paramLong > 0L) && (paramString != null) && (paramString.length() > 0)) {
      a.a(new an(paramLong, paramString));
    }
    for (;;)
    {
      this.a.countDown();
      return;
      a.a(null);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.b
 * JD-Core Version:    0.7.0.1
 */