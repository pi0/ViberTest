package com.viber.voip.viberout.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class z
  implements DialogInterface.OnCancelListener
{
  z(ViberOutDialogs paramViberOutDialogs) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.z
 * JD-Core Version:    0.7.0.1
 */