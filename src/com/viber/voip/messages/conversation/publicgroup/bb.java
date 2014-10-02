package com.viber.voip.messages.conversation.publicgroup;

import android.support.v4.app.FragmentActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.aa;
import java.util.Set;

class bb
  implements aa
{
  bb(PublicGroupInfoFragment paramPublicGroupInfoFragment) {}
  
  public void a(Set<Long> paramSet)
  {
    if ((!ViberApplication.isTablet()) && (this.a.getActivity() != null)) {
      this.a.getActivity().finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.bb
 * JD-Core Version:    0.7.0.1
 */