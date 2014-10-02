package com.viber.voip.messages.controller.a;

import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;

class bf
  implements Runnable
{
  bf(ac paramac, long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.m);
    int n = arrayOfa.length;
    for (int i1 = 0; i1 < n; i1++) {
      arrayOfa[i1].onVideoReceived(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bf
 * JD-Core Version:    0.7.0.1
 */