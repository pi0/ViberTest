package com.viber.voip.messages.extras.twitter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class h
  implements DialogInterface.OnClickListener
{
  h(TwitterDialogActivity paramTwitterDialogActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    TwitterDialogActivity.a(this.a).a();
    TwitterDialogActivity.a(this.a).a(this.a, null);
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.h
 * JD-Core Version:    0.7.0.1
 */