package com.viber.voip.sms;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.contacts.c.d.l;

final class t
  implements Runnable
{
  t(String paramString) {}
  
  public void run()
  {
    if (ViberApplication.getInstance().getContactManager().c(this.a) == l.c) {}
    for (boolean bool = true;; bool = false)
    {
      s.b("checkIsUserOnlineForNonAB. number" + this.a + " - isUnknownNumber " + bool);
      if (bool) {
        ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new u(this));
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sms.t
 * JD-Core Version:    0.7.0.1
 */