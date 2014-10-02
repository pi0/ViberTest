package com.viber.voip.contacts.ui;

import com.viber.voip.ViberApplication;
import com.viber.voip.util.hd;

class t
  implements Runnable
{
  t(ContactDetailsFragment paramContactDetailsFragment, String paramString) {}
  
  public void run()
  {
    hd.a(ViberApplication.getInstance(), this.a, new u(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.t
 * JD-Core Version:    0.7.0.1
 */