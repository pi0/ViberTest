package com.viber.voip.messages.conversation.publicgroup;

import android.app.ProgressDialog;
import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.controller.di;

class af
  extends di
{
  af(PublicGroupConversationFragment paramPublicGroupConversationFragment) {}
  
  public void a(int paramInt, long paramLong)
  {
    if (PublicGroupConversationFragment.c(this.a) == paramInt)
    {
      if (PublicGroupConversationFragment.d(this.a) != null) {
        PublicGroupConversationFragment.d(this.a).cancel();
      }
      e.a().b(this);
    }
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    if (PublicGroupConversationFragment.c(this.a) == paramInt1)
    {
      if (PublicGroupConversationFragment.d(this.a) != null) {
        PublicGroupConversationFragment.d(this.a).cancel();
      }
      e.a().b(this);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.af
 * JD-Core Version:    0.7.0.1
 */