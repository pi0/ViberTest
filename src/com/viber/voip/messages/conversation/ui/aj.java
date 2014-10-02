package com.viber.voip.messages.conversation.ui;

import com.viber.voip.messages.conversation.a.o;

class aj
  implements Runnable
{
  aj(ConversationFragment paramConversationFragment) {}
  
  public void run()
  {
    this.a.e.b(ConversationFragment.e(this.a));
    this.a.e.notifyDataSetChanged();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.aj
 * JD-Core Version:    0.7.0.1
 */