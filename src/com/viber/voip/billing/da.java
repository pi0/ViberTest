package com.viber.voip.billing;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class da
  implements DialogInterface.OnCancelListener
{
  da(PurchaseSupportActivity paramPurchaseSupportActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface.dismiss();
    PurchaseSupportActivity.a(this.a, null);
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.da
 * JD-Core Version:    0.7.0.1
 */