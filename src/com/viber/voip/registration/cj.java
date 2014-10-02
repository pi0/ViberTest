package com.viber.voip.registration;

import com.viber.voip.ViberApplication;
import com.viber.voip.d.b;
import com.viber.voip.util.am;
import com.viber.voip.util.t;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

public class cj
{
  private String a;
  
  public cj(String paramString)
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
  
  public df a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, boolean paramBoolean, cn paramcn, t paramt)
  {
    df[] arrayOfdf = new df[1];
    IOException[] arrayOfIOException = new IOException[1];
    b localb = new b();
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    String str = cm.a(paramString1, paramString3, paramString2, paramString4, paramString5, paramString6, paramString7, paramString8, paramString9, paramString10, paramString11, paramString12, paramBoolean, paramcn);
    new cl(this, paramt, localb.a(this.a, str, new ck(this, arrayOfdf, arrayOfIOException, localCountDownLatch)));
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
 * Qualified Name:     com.viber.voip.registration.cj
 * JD-Core Version:    0.7.0.1
 */