package com.viber.voip.messages.extras.twitter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class i
  implements DialogInterface.OnClickListener
{
  i(TwitterDialogActivity paramTwitterDialogActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.i
 * JD-Core Version:    0.7.0.1
 */