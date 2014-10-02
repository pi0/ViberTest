package com.viber.voip.viberout.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

class r
  implements DialogInterface.OnCancelListener
{
  r(ViberOutDialogs paramViberOutDialogs) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    localbc.a(localu.c("600"));
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.r
 * JD-Core Version:    0.7.0.1
 */