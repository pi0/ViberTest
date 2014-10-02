package com.viber.voip.messages.controller.a;

import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;

class bk
  implements Runnable
{
  bk(ac paramac, long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.p);
    int i1 = arrayOfa.length;
    for (int i2 = 0; i2 < i1; i2++) {
      arrayOfa[i2].onMediaReceivedFromGroup(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bk
 * JD-Core Version:    0.7.0.1
 */