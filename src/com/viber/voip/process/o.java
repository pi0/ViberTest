package com.viber.voip.process;

import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;

class o
  implements Runnable
{
  o(l paraml) {}
  
  public void run()
  {
    synchronized (this.a)
    {
      if ((l.b(this.a) <= 0) && (l.c(this.a)))
      {
        dc.a(dk.a).post(new p(this));
        return;
      }
      l.a("Check L2 OK");
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.process.o
 * JD-Core Version:    0.7.0.1
 */