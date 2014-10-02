package com.viber.voip.registration;

import android.os.Handler;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.a;

class h
  extends PhoneControllerDelegateAdapter
{
  h(ActivationController paramActivationController) {}
  
  public void onServiceStateChanged(int paramInt)
  {
    PhoneControllerDelegate.ViberConnectionState localViberConnectionState = PhoneControllerDelegate.ViberConnectionState.values()[paramInt];
    ActivationController.access$100("resumeActivation onServiceStateChanged: " + localViberConnectionState);
    switch (n.a[localViberConnectionState.ordinal()])
    {
    default: 
      return;
    }
    ActivationController.access$100("resumeActivation SERVICE_CONNECTED");
    ActivationController.access$300(this.a).getPhoneController(false).removeDelegate(this);
    ActivationController.access$500(this.a).removeCallbacks(ActivationController.access$400(this.a));
    a.a(new i(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.h
 * JD-Core Version:    0.7.0.1
 */