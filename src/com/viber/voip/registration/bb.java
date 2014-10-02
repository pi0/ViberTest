package com.viber.voip.registration;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.FragmentActivity;

class bb
  implements DialogInterface.OnClickListener
{
  bb(az paramaz) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (this.a.getActivity() != null) {
      this.a.getActivity().finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.bb
 * JD-Core Version:    0.7.0.1
 */