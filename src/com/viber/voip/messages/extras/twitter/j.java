package com.viber.voip.messages.extras.twitter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

class j
  implements DialogInterface.OnClickListener
{
  j(TwitterDialogActivity paramTwitterDialogActivity, long paramLong, String paramString1, String paramString2, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    TwitterDialogActivity.a(this.e).b(this.e, this.a, this.b, this.c, this.d.getText().toString());
    paramDialogInterface.dismiss();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.j
 * JD-Core Version:    0.7.0.1
 */