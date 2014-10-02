package com.viber.voip.util;

import android.telephony.PhoneNumberUtils;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;

final class he
  extends PhoneControllerDelegateAdapter
{
  he(String paramString, hj paramhj, PhoneControllerWrapper paramPhoneControllerWrapper) {}
  
  public void onIsRegisteredNumber(String paramString, int paramInt)
  {
    hd.b("onIsRegisteredNumber toNumber = " + paramString + ", checkedNumber = " + this.a);
    if (PhoneNumberUtils.compare(paramString, this.a)) {
      switch (paramInt)
      {
      default: 
        this.b.a(false, 2, this.a);
      }
    }
    for (;;)
    {
      this.c.removeDelegate(this);
      return;
      this.b.a(false, 0, this.a);
      continue;
      this.b.a(false, 1, this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.he
 * JD-Core Version:    0.7.0.1
 */