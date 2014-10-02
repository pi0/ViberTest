package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class aj
  implements Runnable
{
  aj(ac paramac, long paramLong, int paramInt1, int paramInt2) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.d);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onJoinPublicGroup(this.a, this.b, this.c);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.aj
 * JD-Core Version:    0.7.0.1
 */