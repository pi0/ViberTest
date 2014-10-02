package com.viber.voip.util.upload.a;

import java.io.IOException;
import java.net.ServerSocket;

class d
  implements Runnable
{
  d(c paramc) {}
  
  public void run()
  {
    try
    {
      for (;;)
      {
        new f(this.a, c.a(this.a).accept());
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.upload.a.d
 * JD-Core Version:    0.7.0.1
 */