package com.viber.voip.contacts.ui;

import com.viber.jni.OnlineContactInfo;
import com.viber.jni.lastonline.LastOnlineDelegate;
import java.util.Arrays;

class m
  implements LastOnlineDelegate
{
  m(ContactDetailsFragment paramContactDetailsFragment) {}
  
  public void onLastOnline(OnlineContactInfo[] paramArrayOfOnlineContactInfo, int paramInt)
  {
    if ((paramArrayOfOnlineContactInfo != null) && (paramArrayOfOnlineContactInfo.length > 0) && (this.a.isVisible()))
    {
      this.a.a("onLastSeen onlineContactInfo:" + Arrays.toString(paramArrayOfOnlineContactInfo) + " seq:" + paramInt);
      int i = paramArrayOfOnlineContactInfo.length;
      for (int j = 0; j < i; j++)
      {
        OnlineContactInfo localOnlineContactInfo = paramArrayOfOnlineContactInfo[j];
        if (!localOnlineContactInfo.contactPhone.startsWith("+")) {
          localOnlineContactInfo.contactPhone = ("+" + localOnlineContactInfo.contactPhone);
        }
        if (localOnlineContactInfo.contactPhone.equals(ContactDetailsFragment.h(this.a))) {
          this.a.runOnUiThread(new n(this, localOnlineContactInfo));
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.m
 * JD-Core Version:    0.7.0.1
 */