package com.viber.voip.registration;

import com.viber.voip.d.d;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.CountDownLatch;

class dh
  implements d
{
  dh(dg paramdg, df[] paramArrayOfdf, IOException[] paramArrayOfIOException, CountDownLatch paramCountDownLatch) {}
  
  public void a(int paramInt, String paramString)
  {
    this.b[0] = new IOException("Data receive failed");
    this.c.countDown();
  }
  
  public void a(InputStream paramInputStream)
  {
    try
    {
      de localde = new de("UpdatePhoneResponse");
      this.a[0] = localde.a(paramInputStream);
      return;
    }
    catch (IOException localIOException)
    {
      this.b[0] = localIOException;
      return;
    }
    finally
    {
      this.c.countDown();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.dh
 * JD-Core Version:    0.7.0.1
 */