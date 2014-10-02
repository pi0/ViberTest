package com.viber.voip.viberout.ui;

import android.app.ProgressDialog;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.billing.q;
import com.viber.voip.billing.r;
import com.viber.voip.billing.v;

class as
  implements v
{
  as(ViberOutDialogs paramViberOutDialogs, ProgressDialog[] paramArrayOfProgressDialog) {}
  
  public void a(r paramr)
  {
    if ((this.a[0] != null) && (this.b.d()))
    {
      this.a[0].dismiss();
      if (paramr.a())
      {
        bc localbc = bc.a();
        u localu = a.z;
        a.z.getClass();
        localbc.a(localu.b("612"));
        ay localay = new ay(this.b);
        localay.a(2131494250);
        ViberOutDialogs localViberOutDialogs = this.b;
        q[] arrayOfq = paramr.c();
        a.z.getClass();
        ViberOutDialogs.a(localViberOutDialogs, localay, arrayOfq, false, "612");
        localay.a(17039360, new at(this));
        localay.a(new au(this));
        localay.a();
      }
    }
    else
    {
      return;
    }
    ViberOutDialogs.a(this.b, paramr);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.as
 * JD-Core Version:    0.7.0.1
 */