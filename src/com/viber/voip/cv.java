package com.viber.voip;

import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;

class cv
  implements Runnable
{
  cv(cu paramcu) {}
  
  public void run()
  {
    ViberApplication.preferences().a(j.am(), true);
    long l = ViberApplication.preferences().b("pref_ptt_autoclean_dirsize_key", 157286400L);
    ViberApplication.getInstance().getMessagesManager().c().a(l, null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.cv
 * JD-Core Version:    0.7.0.1
 */