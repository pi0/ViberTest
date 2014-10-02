package com.viber.voip.messages.conversation.ui;

import android.os.Handler;
import com.viber.jni.OnlineContactInfo;
import com.viber.jni.lastonline.LastOnlineDelegate;
import com.viber.voip.messages.conversation.h;

class v
  implements LastOnlineDelegate
{
  v(m paramm) {}
  
  public void onLastOnline(OnlineContactInfo[] paramArrayOfOnlineContactInfo, int paramInt)
  {
    int i;
    if ((m.l(this.a)) && (m.a(this.a).isVisible()) && (m.d(this.a) != null) && (!m.d(this.a).l()) && (paramArrayOfOnlineContactInfo != null) && (paramArrayOfOnlineContactInfo.length > 0)) {
      i = paramArrayOfOnlineContactInfo.length;
    }
    for (int j = 0;; j++) {
      if (j < i)
      {
        OnlineContactInfo localOnlineContactInfo = paramArrayOfOnlineContactInfo[j];
        if (!localOnlineContactInfo.contactPhone.startsWith("+")) {
          localOnlineContactInfo.contactPhone = ("+" + localOnlineContactInfo.contactPhone);
        }
        if (localOnlineContactInfo.contactPhone.equals(m.d(this.a).e())) {
          m.j(this.a).post(new w(this, localOnlineContactInfo));
        }
      }
      else
      {
        return;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.v
 * JD-Core Version:    0.7.0.1
 */