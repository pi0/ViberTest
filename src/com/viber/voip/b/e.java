package com.viber.voip.b;

import android.telephony.TelephonyManager;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.ViberApplication;

final class e
  extends PhoneControllerDelegateAdapter
{
  long a;
  String b;
  String c;
  long d;
  String e;
  private long g;
  private int h;
  private int i;
  private boolean j = false;
  
  e(a parama) {}
  
  private boolean a()
  {
    return ((TelephonyManager)ViberApplication.getInstance().getSystemService("phone")).getCallState() == 0;
  }
  
  public void a(long paramLong)
  {
    ViberApplication.getInstance().getPhoneController(false).removeDelegate(this);
    if (a.a(this.f, this.d, paramLong))
    {
      ViberApplication.log(3, a.b(), "handleCallReceivedWithoutStateCheck: callType=" + this.i);
      ViberApplication.getInstance().getPhoneController(true).getDialerController().handleCallReceived(this.a, this.b, this.c, false, true, this.e, this.g, this.h, this.i, 0L);
      return;
    }
    ViberApplication.log(5, a.b(), "Out of time delay message!");
  }
  
  public void a(long paramLong1, String paramString1, String paramString2, long paramLong2, String paramString3, long paramLong3, int paramInt1, int paramInt2)
  {
    this.a = paramLong1;
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramLong2;
    this.e = paramString3;
    this.g = paramLong3;
    this.h = paramInt1;
    this.i = paramInt2;
  }
  
  public void b(long paramLong)
  {
    if (a())
    {
      a(paramLong);
      return;
    }
    ViberApplication.log(5, a.b(), "didn't pass state check - GSM call seems active");
    ViberApplication.getInstance().getPhoneController(false).removeDelegate(this);
  }
  
  public void onLBServerTime(long paramLong)
  {
    super.onLBServerTime(paramLong);
    b(System.currentTimeMillis() - paramLong);
    this.j = true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.b.e
 * JD-Core Version:    0.7.0.1
 */