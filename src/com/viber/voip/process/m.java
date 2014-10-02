package com.viber.voip.process;

import com.viber.voip.ViberApplication;

class m
  implements Runnable
{
  m(l paraml) {}
  
  public void run()
  {
    l.a(this.a);
    new q(null).a(false, l.b(this.a));
    if (l.b(this.a) <= 0)
    {
      l.a("mWebActivityCount = " + l.b(this.a) + ", killing browser process");
      ViberApplication.getInstance().finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.process.m
 * JD-Core Version:    0.7.0.1
 */