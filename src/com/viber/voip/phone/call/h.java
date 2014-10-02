package com.viber.voip.phone.call;

import com.viber.jni.CMissedCall;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.entities.CallEntity;
import com.viber.voip.calls.w;

class h
  implements w
{
  h(f paramf, long[] paramArrayOfLong, int paramInt, CMissedCall paramCMissedCall) {}
  
  public void a(CallEntity paramCallEntity)
  {
    int i = 0;
    this.a[this.b] = this.c.getToken();
    int j = 0;
    while (i < this.a.length)
    {
      if (this.a[i] == 0L) {
        j = 1;
      }
      i++;
    }
    if (j == 0) {
      ViberApplication.getInstance().getPhoneController(true).handleSendMissedCallsAck(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.call.h
 * JD-Core Version:    0.7.0.1
 */