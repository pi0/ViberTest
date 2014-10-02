package com.viber.voip.messages.extras.twitter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class g
  implements DialogInterface.OnClickListener
{
  g(TwitterDialogActivity paramTwitterDialogActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.g
 * JD-Core Version:    0.7.0.1
 */