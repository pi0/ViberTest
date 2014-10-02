package com.viber.voip.k;

import com.viber.jni.PhoneControllerDelegate;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerControllerDelegate.DialerEndScreen;
import com.viber.jni.dialer.DialerControllerDelegate.DialerIncomingScreen;
import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.jni.dialer.DialerEndScreenListener;
import com.viber.jni.dialer.DialerIncomingScreenListener;
import com.viber.jni.dialer.DialerLocalCallStateListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.dw;
import com.viber.voip.settings.l;

final class b
  implements dw
{
  public void a(ViberApplication paramViberApplication)
  {
    ViberApplication.log("onAppReady");
    boolean bool = ViberApplication.preferences().b("ANIMATED_MESSAGES_ENABLED", false);
    a.g().a(bool);
    PhoneControllerListener localPhoneControllerListener = paramViberApplication.getPhoneController(false).getDelegatesManager();
    PhoneControllerDelegate[] arrayOfPhoneControllerDelegate = new PhoneControllerDelegate[1];
    arrayOfPhoneControllerDelegate[0] = a.g();
    localPhoneControllerListener.registerDelegate(arrayOfPhoneControllerDelegate);
    DialerEndScreenListener localDialerEndScreenListener = localPhoneControllerListener.getDialerEndScreenListener();
    DialerControllerDelegate.DialerEndScreen[] arrayOfDialerEndScreen = new DialerControllerDelegate.DialerEndScreen[1];
    arrayOfDialerEndScreen[0] = a.g();
    localDialerEndScreenListener.registerDelegate(arrayOfDialerEndScreen);
    DialerLocalCallStateListener localDialerLocalCallStateListener = localPhoneControllerListener.getDialerLocalCallStateListener();
    DialerControllerDelegate.DialerLocalCallState[] arrayOfDialerLocalCallState = new DialerControllerDelegate.DialerLocalCallState[1];
    arrayOfDialerLocalCallState[0] = a.g();
    localDialerLocalCallStateListener.registerDelegate(arrayOfDialerLocalCallState);
    DialerIncomingScreenListener localDialerIncomingScreenListener = localPhoneControllerListener.getDialerIncomingScreenListener();
    DialerControllerDelegate.DialerIncomingScreen[] arrayOfDialerIncomingScreen = new DialerControllerDelegate.DialerIncomingScreen[1];
    arrayOfDialerIncomingScreen[0] = a.g();
    localDialerIncomingScreenListener.registerDelegate(arrayOfDialerIncomingScreen);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.k.b
 * JD-Core Version:    0.7.0.1
 */