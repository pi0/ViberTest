package com.viber.voip.process;

class n
  implements Runnable
{
  n(l paraml) {}
  
  public void run()
  {
    synchronized (this.a)
    {
      if ((l.b(this.a) <= 0) && (l.c(this.a)))
      {
        l.a("OOPS, browser process exists though no web activities, will recheck to be sure");
        l.d(this.a);
        return;
      }
      l.a("Check L1 OK");
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.process.n
 * JD-Core Version:    0.7.0.1
 */