package com.viber.voip.b;

import android.text.TextUtils;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;

class b
  implements PhoneControllerWrapper.InitializedListener
{
  b(a parama, String paramString, boolean paramBoolean) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    String str = this.a;
    if ((this.b) && (!TextUtils.isEmpty(str)) && (!str.startsWith("GCM:")))
    {
      if (!a.b(str)) {
        break label143;
      }
      str = a.a(str);
      a.c("onRegistered  : blackberry push , orignal : " + this.a + " new :" + str);
    }
    for (;;)
    {
      int i = (short)ViberApplication.getInstance().getAddressBookVersion();
      a.c("onRegistered  updateData registration:" + this.a + ",genNum:" + i);
      if (ViberApplication.getInstance().getPhoneController(false).isInitWithInCorrectPushToken())
      {
        a.c("onRegistered  initWithIncorrectPushTolen");
        paramPhoneController.updateData(str);
      }
      return;
      label143:
      str = "GCM:" + str;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.b.b
 * JD-Core Version:    0.7.0.1
 */