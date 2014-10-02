package com.viber.voip.viberout.ui;

import android.app.AlertDialog.Builder;
import android.widget.TextView;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.billing.j;
import com.viber.voip.billing.t;

class k
  implements t
{
  k(ViberOutActivity paramViberOutActivity) {}
  
  public void a(com.viber.voip.billing.u paramu, j paramj)
  {
    boolean bool = true;
    ViberOutActivity localViberOutActivity;
    if (paramu == ViberOutActivity.b(this.a))
    {
      ViberOutActivity.a("balanceInfo.isSuccess(): " + paramj.b());
      if (!paramj.b()) {
        break label136;
      }
      ViberOutActivity.a("balanceInfo.isInvalidUser(): " + paramj.a());
      localViberOutActivity = this.a;
      if (paramj.a()) {
        break label118;
      }
    }
    for (;;)
    {
      ViberOutActivity.a(localViberOutActivity, bool);
      ViberOutActivity.c(this.a);
      if (!paramj.d()) {
        break;
      }
      ViberOutActivity.d(this.a).setText(paramj.e());
      return;
      label118:
      bool = false;
    }
    ViberOutActivity.d(this.a).setText(2131494257);
    return;
    label136:
    ViberOutActivity.e(this.a);
    switch (b.a[paramj.c().ordinal()])
    {
    default: 
      bc localbc = bc.a();
      com.viber.voip.a.u localu = a.z;
      a.z.getClass();
      localbc.a(localu.b("617"));
      new AlertDialog.Builder(this.a).setTitle(2131494258).setMessage(2131494259).setPositiveButton(2131493683, new n(this)).setNegativeButton(2131494175, new m(this)).setCancelable(bool).setOnCancelListener(new l(this)).show();
      return;
    }
    ViberOutActivity.f(this.a);
    ViberOutDialogs.c();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.k
 * JD-Core Version:    0.7.0.1
 */