package com.viber.voip.backgrounds.b;

import com.viber.voip.util.upload.d;
import java.io.IOException;
import java.io.InputStream;

class n
  extends Thread
{
  n(g paramg, InputStream paramInputStream) {}
  
  public void run()
  {
    try
    {
      g.c(this.b).d();
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
          g.a(this.b, localException);
          try
          {
            this.a.close();
          }
          catch (IOException localIOException)
          {
            localIOException.printStackTrace();
          }
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.backgrounds.b.n
 * JD-Core Version:    0.7.0.1
 */