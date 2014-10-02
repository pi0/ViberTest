package com.viber.voip.viberout.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class ak
  implements DialogInterface.OnCancelListener
{
  ak(DialogInterface.OnCancelListener paramOnCancelListener) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.a != null) {
      this.a.onCancel(paramDialogInterface);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ak
 * JD-Core Version:    0.7.0.1
 */