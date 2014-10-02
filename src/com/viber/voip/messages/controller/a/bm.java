package com.viber.voip.messages.controller.a;

import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;

class bm
  implements Runnable
{
  bm(ac paramac, long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, String paramString3) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.j);
    int k = arrayOfa.length;
    for (int m = 0; m < k; m++) {
      arrayOfa[m].onAnimatedMessageReceived(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bm
 * JD-Core Version:    0.7.0.1
 */