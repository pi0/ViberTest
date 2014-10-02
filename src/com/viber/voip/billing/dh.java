package com.viber.voip.billing;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class dh
  implements DialogInterface.OnCancelListener
{
  dh(PurchaseSupportActivity paramPurchaseSupportActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    PurchaseSupportActivity.a(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.dh
 * JD-Core Version:    0.7.0.1
 */