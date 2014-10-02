package com.viber.voip.registration;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

class ba
  implements DialogInterface.OnClickListener
{
  ba(az paramaz) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    a.z.getClass();
    localbc.a(localu.a("402", "Ok"));
    if (this.a.getActivity() != null) {
      ((DeActivationActivity)this.a.getActivity()).a();
    }
    paramDialogInterface.dismiss();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.ba
 * JD-Core Version:    0.7.0.1
 */