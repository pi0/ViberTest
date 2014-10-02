package com.viber.voip.stickers;

import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerDelegateAdapter;

class y
  extends PhoneControllerDelegateAdapter
{
  private PhoneControllerDelegate.ViberConnectionState b;
  
  y(r paramr) {}
  
  public void onServiceStateChanged(int paramInt)
  {
    PhoneControllerDelegate.ViberConnectionState localViberConnectionState = PhoneControllerDelegate.ViberConnectionState.values()[paramInt];
    if (localViberConnectionState == this.b) {
      return;
    }
    switch (aa.a[localViberConnectionState.ordinal()])
    {
    }
    for (;;)
    {
      this.b = localViberConnectionState;
      return;
      r.a(this.a, false);
      r.b(this.a).b();
      continue;
      this.a.s();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.y
 * JD-Core Version:    0.7.0.1
 */