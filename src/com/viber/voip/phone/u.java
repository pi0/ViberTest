package com.viber.voip.phone;

import com.viber.jni.dialer.DialerController;
import com.viber.voip.phone.call.a;

class u
  implements Runnable
{
  u(t paramt) {}
  
  public void run()
  {
    PhoneActivity.g(this.a.a).a();
    PhoneActivity.h(this.a.a).handleHangup();
    this.a.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.u
 * JD-Core Version:    0.7.0.1
 */