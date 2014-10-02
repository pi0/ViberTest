package com.viber.voip.viberout.ui;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class av
  implements DialogInterface.OnCancelListener
{
  av(ViberOutDialogs paramViberOutDialogs, ProgressDialog[] paramArrayOfProgressDialog) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    this.a[0] = null;
    this.b.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.av
 * JD-Core Version:    0.7.0.1
 */