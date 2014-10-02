package com.viber.voip.util;

import android.telephony.PhoneNumberUtils;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;

class hh
  extends PhoneControllerDelegateAdapter
{
  hh(hg paramhg) {}
  
  public void onIsOnlineReply(String paramString, boolean paramBoolean)
  {
    hj localhj;
    if (PhoneNumberUtils.compare(paramString, this.a.b.toString()))
    {
      localhj = this.a.c;
      if (!paramBoolean) {
        break label64;
      }
    }
    label64:
    for (int i = 0;; i = 1)
    {
      localhj.a(false, i, this.a.b);
      this.a.a.getPhoneController(false).removeDelegate(this);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.hh
 * JD-Core Version:    0.7.0.1
 */