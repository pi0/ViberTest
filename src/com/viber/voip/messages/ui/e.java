package com.viber.voip.messages.ui;

class e
  implements Runnable
{
  e(ConversationActivity paramConversationActivity) {}
  
  public void run()
  {
    if ((ConversationActivity.b(this.a) != null) && (!ConversationActivity.c(this.a)))
    {
      ConversationActivity.a(this.a, true);
      ConversationActivity.d(this.a);
    }
    ConversationActivity.a(this.a, ConversationActivity.b(this.a), true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.e
 * JD-Core Version:    0.7.0.1
 */