package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PublicGroupInfo;
import com.viber.jni.RecoveryGroupInfo;

class be
  implements Runnable
{
  be(ac paramac, RecoveryGroupInfo[] paramArrayOfRecoveryGroupInfo, PublicGroupInfo[] paramArrayOfPublicGroupInfo, String paramString, int paramInt1, int paramInt2, boolean paramBoolean) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.g);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onRecoverGroups(this.a, this.b, this.c, this.d, this.e, this.f);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.be
 * JD-Core Version:    0.7.0.1
 */