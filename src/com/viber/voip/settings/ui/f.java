package com.viber.voip.settings.ui;

import android.widget.Toast;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.jni.secure.SecureCallsController;
import com.viber.voip.ViberApplication;

class f
  implements PhoneControllerWrapper.InitializedListener
{
  f(a parama) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    try
    {
      ViberApplication.getInstance().getPhoneController(false).getSecureCallsController().handleClearSecureCallStorage();
      Toast.makeText(this.a.getActivity(), 2131494504, 1).show();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.f
 * JD-Core Version:    0.7.0.1
 */