package com.viber.service;

import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class r
  implements Runnable
{
  r(n paramn) {}
  
  public void run()
  {
    if (ViberApplication.getInstance().isOnForeground())
    {
      this.a.a.b();
      return;
    }
    ViberApplication.preferences().a("last_online_last_changed_time", true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.r
 * JD-Core Version:    0.7.0.1
 */