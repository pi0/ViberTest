package com.viber.voip.viberout.ui;

import android.app.ProgressDialog;
import com.viber.voip.billing.a;
import com.viber.voip.billing.q;

class ag
  implements Runnable
{
  ag(ae paramae, ProgressDialog[] paramArrayOfProgressDialog) {}
  
  public void run()
  {
    ViberOutDialogs.a("Starting purchase of " + this.b.c.b());
    a.a().a(new ah(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ag
 * JD-Core Version:    0.7.0.1
 */