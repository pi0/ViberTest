package com.viber.voip.messages.extras.fb;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class g
  implements DialogInterface.OnCancelListener
{
  g(FacebookDialogActivity paramFacebookDialogActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.g
 * JD-Core Version:    0.7.0.1
 */