package com.viber.voip.messages.conversation.publicgroup;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.conversation.a.o;

class ad
  implements PhoneControllerWrapper.InitializedListener
{
  ad(PublicGroupConversationFragment paramPublicGroupConversationFragment) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    PublicGroupConversationFragment.a(this.a, new ao(this.a, paramPhoneController));
    PublicGroupConversationFragment.b(this.a).a(PublicGroupConversationFragment.a(this.a));
    ViberApplication.getInstance().getPhoneController(false).registerDelegate(PublicGroupConversationFragment.a(this.a));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.ad
 * JD-Core Version:    0.7.0.1
 */