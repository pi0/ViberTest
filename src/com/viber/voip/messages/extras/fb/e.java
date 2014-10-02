package com.viber.voip.messages.extras.fb;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.widget.EditText;

class e
  implements DialogInterface.OnClickListener
{
  e(FacebookDialogActivity paramFacebookDialogActivity, Intent paramIntent, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    long l = this.a.getLongExtra("msg_id", -1L);
    String str1 = this.a.getStringExtra("msg_body");
    String str2 = this.a.getStringExtra("msg_mime_type");
    String str3 = this.a.getStringExtra("msg_uri");
    FacebookDialogActivity.a(this.c).a(this.c, l, str1, str2, str3, this.b.getText().toString());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.e
 * JD-Core Version:    0.7.0.1
 */