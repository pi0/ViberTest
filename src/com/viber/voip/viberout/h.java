package com.viber.voip.viberout;

import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.voip.ViberApplication;

class h
  implements DialerControllerDelegate.DialerLocalCallState
{
  h(e parame) {}
  
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2)
  {
    if (!e.b(this.a))
    {
      e.d("onCallEnded, reason:" + paramInt1 + ", call UI not visible");
      this.a.b(ViberApplication.getInstance(), paramInt1);
      return;
    }
    e.d("onCallEnded, reason:" + paramInt1 + ", call UI visible, ignoring");
  }
  
  public void onCallStarted(boolean paramBoolean)
  {
    e.d("onCallStarted");
  }
  
  public void onHangup()
  {
    e.d("onHangup");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.h
 * JD-Core Version:    0.7.0.1
 */