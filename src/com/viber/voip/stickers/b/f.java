package com.viber.voip.stickers.b;

import com.viber.voip.util.upload.d;
import java.io.IOException;
import java.io.InputStream;

class f
  extends Thread
{
  f(e parame, InputStream paramInputStream) {}
  
  public void run()
  {
    try
    {
      e.a(this.b).d();
      a.a("Downloading stickers finished");
    }
    catch (Exception localException)
    {
      synchronized (this.b)
      {
        for (;;)
        {
          this.b.notifyAll();
          return;
          localException = localException;
          e.a(this.b, localException);
          try
          {
            this.a.close();
          }
          catch (IOException localIOException)
          {
            a.a("exception during download", localIOException);
          }
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.b.f
 * JD-Core Version:    0.7.0.1
 */