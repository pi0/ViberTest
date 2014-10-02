package com.viber.voip.messages.conversation.publicgroup;

import com.viber.jni.PhoneControllerDelegateAdapter;

class aj
  extends PhoneControllerDelegateAdapter
{
  aj(PublicGroupConversationFragment paramPublicGroupConversationFragment) {}
  
  public void onServiceStateChanged(int paramInt)
  {
    if (PublicGroupConversationFragment.j(this.a) != null) {}
    switch (an.a[com.viber.jni.PhoneControllerDelegate.ViberConnectionState.resolveEnum(paramInt).ordinal()])
    {
    default: 
      return;
    }
    PublicGroupConversationFragment.b(this.a, new ak(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.aj
 * JD-Core Version:    0.7.0.1
 */