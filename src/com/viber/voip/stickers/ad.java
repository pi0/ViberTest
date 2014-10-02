package com.viber.voip.stickers;

import com.viber.voip.ViberApplication;

class ad
  implements Runnable
{
  ad(r paramr) {}
  
  public void run()
  {
    r.a(this.a, false);
    r.b(this.a).a();
    if (ViberApplication.isActivated())
    {
      this.a.t();
      r.a(this.a, this.a.v(), false);
      r.c(this.a).c();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.ad
 * JD-Core Version:    0.7.0.1
 */