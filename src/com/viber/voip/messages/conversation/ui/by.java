package com.viber.voip.messages.conversation.ui;

import android.widget.Toast;
import com.viber.voip.messages.ui.view.c;
import com.viber.voip.util.gl;

class by
  implements Runnable
{
  by(ConversationInfoFragment paramConversationInfoFragment, long paramLong) {}
  
  public void run()
  {
    Toast.makeText(this.b.getActivity(), this.b.getString(2131493574), 1).show();
    ConversationInfoFragment.a(this.b, "rename_dialog");
    gl.a(this.b.getSherlockActivity(), ConversationInfoFragment.c(this.b).c());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.by
 * JD-Core Version:    0.7.0.1
 */