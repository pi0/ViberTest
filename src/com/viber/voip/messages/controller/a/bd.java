package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class bd
  implements Runnable
{
  bd(ac paramac, long paramLong1, long paramLong2, int paramInt) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.d);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onGroupLeave(this.a, this.b, this.c);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bd
 * JD-Core Version:    0.7.0.1
 */