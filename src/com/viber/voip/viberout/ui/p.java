package com.viber.voip.viberout.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.billing.ae;

class p
  implements DialogInterface.OnClickListener
{
  p(ViberOutDialogs paramViberOutDialogs, ae paramae) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = com.viber.voip.billing.a.a().a(this.a);
    ViberOutDialogs.a("Getting country rates, url: " + str);
    bc localbc = bc.a();
    u localu = com.viber.voip.a.a.z;
    com.viber.voip.a.a.z.getClass();
    com.viber.voip.a.a.z.getClass();
    localbc.a(localu.a("600", "Get Rates"));
    ViberOutWebViewActivity.a(this.b, str, this.b.getString(2131494254));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.p
 * JD-Core Version:    0.7.0.1
 */