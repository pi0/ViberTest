package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class bh
  implements Runnable
{
  bh(ac paramac, long paramLong, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.e);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onSecondaryRegistered(this.a, this.b, this.c, this.d);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bh
 * JD-Core Version:    0.7.0.1
 */