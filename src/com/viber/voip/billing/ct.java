package com.viber.voip.billing;

import android.os.SystemClock;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerDelegateAdapter;

class ct
  extends PhoneControllerDelegateAdapter
{
  ct(cs paramcs) {}
  
  public void onServiceStateChanged(int paramInt)
  {
    PhoneControllerDelegate.ViberConnectionState localViberConnectionState = PhoneControllerDelegate.ViberConnectionState.values()[paramInt];
    if (localViberConnectionState == cs.a(this.a)) {
      return;
    }
    cs.a(this.a, SystemClock.elapsedRealtime());
    cs.a("onServiceStateChanged: " + localViberConnectionState);
    switch (cv.a[localViberConnectionState.ordinal()])
    {
    default: 
      cs.c(this.a);
    }
    for (;;)
    {
      cs.a(this.a, localViberConnectionState);
      return;
      cs.b(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.ct
 * JD-Core Version:    0.7.0.1
 */