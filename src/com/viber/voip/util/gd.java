package com.viber.voip.util;

import com.viber.voip.ViberApplication;
import com.viber.voip.e.u;
import com.viber.voip.phone.v;

class gd
  implements Runnable
{
  gd(fz paramfz, boolean paramBoolean, long paramLong) {}
  
  public void run()
  {
    if (this.a) {
      ViberApplication.getInstance().getPhoneApp().a().c(this.b);
    }
    gg.a(this.b, new ge(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.gd
 * JD-Core Version:    0.7.0.1
 */