package com.viber.voip.messages.conversation.ui;

import android.os.Handler;
import com.viber.jni.OnlineContactInfo;
import com.viber.jni.lastonline.LastOnlineDelegate;
import java.util.Arrays;

class ca
  implements LastOnlineDelegate
{
  ca(ConversationInfoFragment paramConversationInfoFragment) {}
  
  public void onLastOnline(OnlineContactInfo[] paramArrayOfOnlineContactInfo, int paramInt)
  {
    if ((paramArrayOfOnlineContactInfo != null) && (paramArrayOfOnlineContactInfo.length > 0))
    {
      ConversationInfoFragment.b(this.a, "onLastSeen onlineContactInfo:" + Arrays.toString(paramArrayOfOnlineContactInfo) + " seq:" + paramInt);
      ConversationInfoFragment.e(this.a).post(new cb(this, paramArrayOfOnlineContactInfo));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ca
 * JD-Core Version:    0.7.0.1
 */