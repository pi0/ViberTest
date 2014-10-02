package com.viber.voip.messages.conversation.ui;

import android.widget.Toast;
import com.viber.voip.messages.conversation.h;
import com.viber.voip.messages.ui.view.c;

class bz
  implements Runnable
{
  bz(ConversationInfoFragment paramConversationInfoFragment) {}
  
  public void run()
  {
    Toast.makeText(this.a.getActivity(), this.a.getString(2131494232), 1).show();
    ConversationInfoFragment.a(this.a, "rename_dialog");
    ConversationInfoFragment.c(this.a).a(ConversationInfoFragment.a(this.a).c());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.bz
 * JD-Core Version:    0.7.0.1
 */