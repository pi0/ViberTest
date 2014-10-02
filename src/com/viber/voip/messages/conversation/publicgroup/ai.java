package com.viber.voip.messages.conversation.publicgroup;

import com.viber.voip.messages.conversation.w;

class ai
  implements Runnable
{
  ai(ah paramah, long paramLong, boolean paramBoolean) {}
  
  public void run()
  {
    if (PublicGroupConversationFragment.f(this.c.a) == this.a)
    {
      PublicGroupConversationFragment.a(this.c.a, true);
      if (this.b) {
        PublicGroupConversationFragment.g(this.c.a);
      }
    }
    else
    {
      return;
    }
    PublicGroupConversationFragment.h(this.c.a).i();
    PublicGroupConversationFragment.i(this.c.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.ai
 * JD-Core Version:    0.7.0.1
 */