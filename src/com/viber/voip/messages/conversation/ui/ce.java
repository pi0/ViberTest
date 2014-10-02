package com.viber.voip.messages.conversation.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

class ce
  implements DialogInterface.OnClickListener
{
  ce(ConversationInfoFragment paramConversationInfoFragment, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ConversationInfoFragment.a(this.b, this.a.getWindowToken());
    paramDialogInterface.cancel();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ce
 * JD-Core Version:    0.7.0.1
 */