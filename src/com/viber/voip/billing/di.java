package com.viber.voip.billing;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class di
  implements DialogInterface.OnCancelListener
{
  di(PurchaseSupportActivity paramPurchaseSupportActivity, DialogInterface.OnCancelListener paramOnCancelListener) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (this.a != null) {
      this.a.onCancel(paramDialogInterface);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.di
 * JD-Core Version:    0.7.0.1
 */