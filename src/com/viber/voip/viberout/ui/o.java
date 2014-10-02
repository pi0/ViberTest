package com.viber.voip.viberout.ui;

import android.app.ProgressDialog;
import com.viber.voip.billing.ae;
import com.viber.voip.billing.r;
import com.viber.voip.billing.v;

class o
  implements v
{
  o(ViberOutDialogs paramViberOutDialogs, ProgressDialog[] paramArrayOfProgressDialog, ae paramae) {}
  
  public void a(r paramr)
  {
    if ((this.a[0] != null) && (this.c.d()))
    {
      this.a[0].dismiss();
      if (paramr.a()) {
        ViberOutDialogs.a(this.c, paramr.c(), this.b);
      }
    }
    else
    {
      return;
    }
    ViberOutDialogs.a(this.c, paramr);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.o
 * JD-Core Version:    0.7.0.1
 */