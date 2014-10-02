package com.viber.voip.phone.call.a;

import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.voip.phone.call.i;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.l;
import com.viber.voip.phone.call.n;
import com.viber.voip.util.q;

public class a
  implements DialerControllerDelegate.DialerLocalCallState, i
{
  private k a;
  
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2)
  {
    k localk = this.a;
    if (localk == null) {
      return;
    }
    long l = localk.d().x() / 1000L;
    if ((l == 0L) && (localk.b() == l.a) && (paramInt1 != 10)) {}
    for (int i = 1;; i = 0)
    {
      if ((paramInt1 != 14) && (localk.f()) && (l > 0L)) {
        l += 2L;
      }
      if (i != 0) {
        break;
      }
      q.a(paramLong, localk, l, null);
      return;
    }
  }
  
  public void onCallInfoReady(k paramk)
  {
    this.a = paramk;
  }
  
  public void onCallStarted(boolean paramBoolean) {}
  
  public void onHangup() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.call.a.a
 * JD-Core Version:    0.7.0.1
 */