package com.viber.voip.g;

import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;

class i
  implements DialerControllerDelegate.DialerPhoneState
{
  i(h paramh) {}
  
  public void onPhoneStateChanged(int paramInt)
  {
    this.a.a(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.g.i
 * JD-Core Version:    0.7.0.1
 */