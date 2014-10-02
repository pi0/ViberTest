package com.viber.voip.e;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;

class d
  implements PhoneControllerWrapper.InitializedListener
{
  d(a parama, PhoneControllerWrapper paramPhoneControllerWrapper) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    int i = paramPhoneController.getDialerController().getPhoneState();
    if ((i == 3) || (i == 2))
    {
      CallerInfo localCallerInfo = this.a.getCurrentCall().c();
      String str1 = localCallerInfo.a();
      String str2 = localCallerInfo.b();
      a.a(this.b, new e(this, str1, str2));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.e.d
 * JD-Core Version:    0.7.0.1
 */