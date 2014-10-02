package com.viber.voip.messages.controller.a;

import com.viber.jni.PGLatestParams;
import com.viber.jni.PhoneControllerDelegateAdapter;

class ak
  implements Runnable
{
  ak(ac paramac, PGLatestParams[] paramArrayOfPGLatestParams, long paramLong) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.c);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onPublicGroupsUpdated(this.a, this.b);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.ak
 * JD-Core Version:    0.7.0.1
 */