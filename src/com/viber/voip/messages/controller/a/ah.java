package com.viber.voip.messages.controller.a;

import com.viber.jni.GroupUserInfo;
import com.viber.jni.PhoneControllerDelegateAdapter;

class ah
  implements Runnable
{
  ah(ac paramac, int paramInt1, long paramLong, String paramString, GroupUserInfo[] paramArrayOfGroupUserInfo, int paramInt2, int paramInt3) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.g);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onGroupInfo(this.a, this.b, this.c, this.d, this.e, this.f);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.ah
 * JD-Core Version:    0.7.0.1
 */