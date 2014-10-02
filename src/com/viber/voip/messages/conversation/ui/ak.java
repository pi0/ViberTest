package com.viber.voip.messages.conversation.ui;

import android.os.Handler;
import com.viber.voip.messages.controller.af;
import com.viber.voip.messages.orm.entity.impl.MessageCallEntityImpl;
import java.util.List;

class ak
  implements af
{
  ak(ConversationFragment paramConversationFragment) {}
  
  public void a(List<MessageCallEntityImpl> paramList)
  {
    this.a.k.post(new al(this, paramList));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ak
 * JD-Core Version:    0.7.0.1
 */