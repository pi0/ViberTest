package com.viber.voip.messages.controller.a;

import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;

class ad
  implements Runnable
{
  ad(ac paramac, long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.i);
    int j = arrayOfa.length;
    for (int k = 0; k < j; k++) {
      arrayOfa[k].onTextReceived(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.ad
 * JD-Core Version:    0.7.0.1
 */