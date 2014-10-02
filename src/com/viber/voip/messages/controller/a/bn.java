package com.viber.voip.messages.controller.a;

import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;

class bn
  implements Runnable
{
  bn(ac paramac, long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, String paramString4, int paramInt3) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.m);
    int n = arrayOfa.length;
    for (int i1 = 0; i1 < n; i1++) {
      arrayOfa[i1].onAnimatedMessageReceivedFromGroup(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bn
 * JD-Core Version:    0.7.0.1
 */