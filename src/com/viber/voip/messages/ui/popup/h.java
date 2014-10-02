package com.viber.voip.messages.ui.popup;

import android.os.Handler;
import com.viber.jni.OnlineContactInfo;
import com.viber.jni.lastonline.LastOnlineDelegate;
import java.util.Arrays;

class h
  implements LastOnlineDelegate
{
  h(PopupMessageActivity paramPopupMessageActivity) {}
  
  public void onLastOnline(OnlineContactInfo[] paramArrayOfOnlineContactInfo, int paramInt)
  {
    if ((PopupMessageActivity.o(this.a)) && (paramArrayOfOnlineContactInfo != null) && (paramArrayOfOnlineContactInfo.length > 0))
    {
      this.a.a("onLastSeen onlineContactInfo:" + Arrays.toString(paramArrayOfOnlineContactInfo) + " seq:" + paramInt);
      PopupMessageActivity.m(this.a).post(new i(this));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.popup.h
 * JD-Core Version:    0.7.0.1
 */