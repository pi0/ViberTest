package com.viber.voip.app;

import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.settings.l;
import com.viber.voip.util.bj;
import com.viber.voip.w;

class c
  implements Runnable
{
  c(ViberFragmentActivity paramViberFragmentActivity) {}
  
  public void run()
  {
    long l1 = ViberApplication.preferences().b("pref_ptt_autoclean_dirsize_key", 157286400L);
    long l2 = bj.a(w.u);
    ViberApplication.log("PTT autoclean MAX=" + l1 + " USED=" + l2);
    if (l2 > l1)
    {
      ViberApplication.getInstance().getMessagesManager().c().a(l1, null);
      ViberApplication.log("PTT autoclean DONE");
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.app.c
 * JD-Core Version:    0.7.0.1
 */