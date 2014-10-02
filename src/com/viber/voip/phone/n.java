package com.viber.voip.phone;

import com.viber.voip.billing.ae;
import com.viber.voip.billing.dt;
import com.viber.voip.viberout.ui.ViberOutDialogs;

class n
  implements Runnable
{
  n(PhoneActivity paramPhoneActivity, ae paramae) {}
  
  public void run()
  {
    PhoneActivity.a(this.b, null);
    boolean bool = ViberOutDialogs.a();
    this.b.b("enableOrUpdateState, reason: HANGUP_NO_CREDIT, fromDialpad:" + bool);
    dt.a(this.a);
    if (bool)
    {
      ViberOutDialogs.b(this.a);
      return;
    }
    ViberOutDialogs.a(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.n
 * JD-Core Version:    0.7.0.1
 */