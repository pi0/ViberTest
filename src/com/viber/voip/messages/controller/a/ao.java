package com.viber.voip.messages.controller.a;

import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;

class ao
  implements Runnable
{
  ao(ac paramac, long paramLong1, String paramString1, long paramLong2, String paramString2, String paramString3, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString4, int paramInt3) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.l);
    int m = arrayOfa.length;
    for (int n = 0; n < m; n++) {
      arrayOfa[n].onTextReceivedFromGroup(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.ao
 * JD-Core Version:    0.7.0.1
 */