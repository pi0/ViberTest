package com.viber.voip.messages.extras.twitter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class b
  implements DialogInterface.OnCancelListener
{
  b(TwitterAuthDialogActivity paramTwitterAuthDialogActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.b
 * JD-Core Version:    0.7.0.1
 */