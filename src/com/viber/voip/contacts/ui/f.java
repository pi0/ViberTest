package com.viber.voip.contacts.ui;

import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.g;
import com.viber.voip.billing.ae;
import com.viber.voip.viberout.ui.ViberOutDialogs;

class f
  implements Runnable
{
  f(ContactDetailsFragment paramContactDetailsFragment, ae paramae) {}
  
  public void run()
  {
    bc.a().a(a.v.e(true));
    ViberOutDialogs.a(this.b.getActivity(), this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.f
 * JD-Core Version:    0.7.0.1
 */