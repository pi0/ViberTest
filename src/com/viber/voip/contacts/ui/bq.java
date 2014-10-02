package com.viber.voip.contacts.ui;

import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.util.az;

final class bq
  implements az
{
  bq(long paramLong, String paramString, Runnable paramRunnable) {}
  
  public void a(boolean paramBoolean)
  {
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    a.z.getClass();
    localbc.a(localu.a("336", "Delete"));
    ViberApplication.getInstance().getContactManager().a(this.a, this.b);
    if (this.c != null) {
      this.c.run();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bq
 * JD-Core Version:    0.7.0.1
 */