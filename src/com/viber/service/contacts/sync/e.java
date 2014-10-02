package com.viber.service.contacts.sync;

import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

class e
  implements Runnable
{
  e(a parama) {}
  
  public void run()
  {
    boolean bool1 = ViberApplication.preferences().b("PREF_CONTCATS_SYNC_ACCOUT_REQUEST", false);
    boolean bool2 = ViberApplication.preferences().b("PREF_CONTCATS_SYNC_ACCOUT_SYNCING", false);
    a.a(this.a, true);
    if (a.b(this.a)) {
      this.a.d();
    }
    if (bool2) {
      a.c(this.a);
    }
    while ((!a.d(this.a)) && (!bool1)) {
      return;
    }
    this.a.c();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.contacts.sync.e
 * JD-Core Version:    0.7.0.1
 */