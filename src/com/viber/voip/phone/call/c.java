package com.viber.voip.phone.call;

import com.viber.jni.dialer.DialerController;

class c
  implements i
{
  c(b paramb) {}
  
  public void onCallInfoReady(k paramk)
  {
    if (this.a.b)
    {
      a.a(this.a.d).handleDialViberOut(this.a.c);
      return;
    }
    a.a(this.a.d).handleDial(this.a.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.call.c
 * JD-Core Version:    0.7.0.1
 */