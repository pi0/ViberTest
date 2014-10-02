package com.viber.voip.messages.extras.fb;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class l
  implements DialogInterface.OnCancelListener
{
  l(FacebookDialogActivity paramFacebookDialogActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.l
 * JD-Core Version:    0.7.0.1
 */