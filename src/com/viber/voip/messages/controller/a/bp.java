package com.viber.voip.messages.controller.a;

import com.viber.jni.GroupUserInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;

class bp
  implements Runnable
{
  bp(ac paramac, long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, long paramLong3, String paramString3, String paramString4, int paramInt2, GroupUserInfo[] paramArrayOfGroupUserInfo) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.k);
    int m = arrayOfa.length;
    for (int n = 0; n < m; n++) {
      arrayOfa[n].onGroupChanged(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bp
 * JD-Core Version:    0.7.0.1
 */