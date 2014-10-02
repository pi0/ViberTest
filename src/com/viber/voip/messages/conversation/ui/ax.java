package com.viber.voip.messages.conversation.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;

class ax
  implements DialogInterface.OnCancelListener
{
  ax(ConversationFragment paramConversationFragment) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    localbc.a(localu.c("501b"));
    if ((ConversationFragment.a(this.a) != null) && (ConversationFragment.a(this.a).a())) {
      ConversationFragment.a(this.a).i();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ax
 * JD-Core Version:    0.7.0.1
 */