package com.viber.voip.billing;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

final class dj
  implements DialogInterface.OnClickListener
{
  dj(EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PurchaseSupportActivity.c(this.a.getText().toString());
    PurchaseSupportActivity.a("$0.99", new ae(PurchaseSupportActivity.d()));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.dj
 * JD-Core Version:    0.7.0.1
 */