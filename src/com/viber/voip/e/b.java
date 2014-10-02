package com.viber.voip.e;

import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.voip.util.fr;

class b
  implements DialerControllerDelegate.DialerLocalCallState
{
  b(a parama) {}
  
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2)
  {
    if (a.a(this.a) != null) {
      g.a(a.a(this.a)).b();
    }
    a.a(this.a, new c(this));
  }
  
  public void onCallStarted(boolean paramBoolean) {}
  
  public void onHangup() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.e.b
 * JD-Core Version:    0.7.0.1
 */