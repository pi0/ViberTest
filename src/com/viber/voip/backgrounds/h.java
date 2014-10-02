package com.viber.voip.backgrounds;

import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerDelegateAdapter;

class h
  extends PhoneControllerDelegateAdapter
{
  h(a parama) {}
  
  public void onServiceStateChanged(int paramInt)
  {
    PhoneControllerDelegate.ViberConnectionState localViberConnectionState = PhoneControllerDelegate.ViberConnectionState.values()[paramInt];
    if (localViberConnectionState == a.d(this.a)) {
      return;
    }
    switch (j.a[localViberConnectionState.ordinal()])
    {
    }
    for (;;)
    {
      a.a(this.a, localViberConnectionState);
      return;
      a.b(this.a);
      continue;
      a.e(this.a).a();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.backgrounds.h
 * JD-Core Version:    0.7.0.1
 */