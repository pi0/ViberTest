package com.viber.voip.messages.conversation.ui;

import android.support.v4.app.FragmentActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.aa;
import java.util.Set;

class ay
  implements aa
{
  ay(ConversationFragment paramConversationFragment) {}
  
  public void a(Set<Long> paramSet)
  {
    if ((!ViberApplication.isTablet()) && (this.a.getActivity() != null)) {
      this.a.getActivity().finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ay
 * JD-Core Version:    0.7.0.1
 */