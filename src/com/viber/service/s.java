package com.viber.service;

import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class s
  implements Runnable
{
  s(n paramn) {}
  
  public void run()
  {
    l locall = ViberApplication.preferences();
    if (locall.b("last_online_show_change_settings_dialog", false))
    {
      locall.a("last_online_show_change_settings_dialog", false);
      this.a.a.b();
    }
    while ((!locall.b("last_online_settings_enable_alarmed", false)) || (86400000L + locall.b("last_online_last_changed_time", 0L) >= System.currentTimeMillis())) {
      return;
    }
    this.a.a.b();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.s
 * JD-Core Version:    0.7.0.1
 */