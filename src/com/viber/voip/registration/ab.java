package com.viber.voip.registration;

import com.viber.logger.QaLogger;
import com.viber.logger.QaLogger.QaActivationEvent;
import com.viber.voip.ViberApplication;
import com.viber.voip.d.b;
import com.viber.voip.util.am;
import com.viber.voip.util.t;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;

public class ab
{
  private final String a;
  private ReentrantLock b = new ReentrantLock();
  
  public ab(String paramString)
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
  
  public df a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, String paramString, t paramt)
  {
    df[] arrayOfdf = new df[1];
    IOException[] arrayOfIOException = new IOException[1];
    b localb = new b();
    QaLogger.a(new QaLogger.QaActivationEvent(paramCharSequence1.toString(), ViberApplication.getInstance().getActivationController().getRegNumber(), paramCharSequence2.toString()));
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    String str = ae.a(paramCharSequence1, paramCharSequence2, paramString);
    new ad(this, paramt, localb.a(this.a, str, new ac(this, arrayOfdf, arrayOfIOException, localCountDownLatch)));
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
 * Qualified Name:     com.viber.voip.registration.ab
 * JD-Core Version:    0.7.0.1
 */