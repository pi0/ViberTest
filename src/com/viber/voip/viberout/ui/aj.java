package com.viber.voip.viberout.ui;

import com.viber.voip.billing.bf;
import com.viber.voip.billing.bo;
import com.viber.voip.billing.bu;

class aj
  implements bf
{
  aj(ai paramai) {}
  
  public void a(bu parambu, bo parambo)
  {
    ViberOutDialogs.a("Consume IabResult, success: " + parambo.c());
    if ((this.a.a[0] != null) && (this.a.c.e.d())) {
      this.a.b.run();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.aj
 * JD-Core Version:    0.7.0.1
 */