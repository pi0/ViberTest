package com.viber.voip.messages.conversation.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

class cf
  implements DialogInterface.OnClickListener
{
  cf(ConversationInfoFragment paramConversationInfoFragment, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ConversationInfoFragment.c(this.b, this.a.getText().toString().trim());
    ConversationInfoFragment.a(this.b, this.a.getWindowToken());
    paramDialogInterface.cancel();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.cf
 * JD-Core Version:    0.7.0.1
 */