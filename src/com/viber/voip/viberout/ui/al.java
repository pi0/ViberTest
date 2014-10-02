package com.viber.voip.viberout.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;

final class al
  implements DialogInterface.OnClickListener
{
  al(DialogInterface.OnCancelListener paramOnCancelListener) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (this.a != null) {
      this.a.onCancel(paramDialogInterface);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.al
 * JD-Core Version:    0.7.0.1
 */