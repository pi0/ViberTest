package com.viber.voip.messages.controller.a;

import com.viber.jni.GroupAddedMember;
import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;

class bo
  implements Runnable
{
  bo(ac paramac, long paramLong1, int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, long paramLong2, long paramLong3, int paramInt4, String paramString3, GroupAddedMember[] paramArrayOfGroupAddedMember, int paramInt5, String paramString4, String paramString5, String paramString6, String[] paramArrayOfString, LocationInfo paramLocationInfo, String paramString7, int paramInt6) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.t);
    int i1 = arrayOfa.length;
    for (int i2 = 0; i2 < i1; i2++) {
      arrayOfa[i2].onPublicGroupChanged(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bo
 * JD-Core Version:    0.7.0.1
 */