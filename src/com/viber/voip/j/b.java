package com.viber.voip.j;

import com.viber.jni.PhoneControllerDelegate;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.dw;
import com.viber.voip.settings.l;

final class b
  implements dw
{
  public void a(ViberApplication paramViberApplication)
  {
    int i = ViberApplication.preferences().b("pref_vibes_enabled_2", 0);
    a.a("onAppReady vibesWereEnabled=" + i);
    a.g().a(i);
    PhoneControllerListener localPhoneControllerListener = paramViberApplication.getPhoneController(false).getDelegatesManager();
    PhoneControllerDelegate[] arrayOfPhoneControllerDelegate = new PhoneControllerDelegate[1];
    arrayOfPhoneControllerDelegate[0] = a.g();
    localPhoneControllerListener.registerDelegate(arrayOfPhoneControllerDelegate);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.j.b
 * JD-Core Version:    0.7.0.1
 */