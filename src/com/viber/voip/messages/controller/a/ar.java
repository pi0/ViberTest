package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class ar
  implements Runnable
{
  ar(ac paramac, long paramLong1, long paramLong2, int paramInt1, int paramInt2) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.e);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onMessageDelivered(this.a, this.b, this.c, this.d);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.ar
 * JD-Core Version:    0.7.0.1
 */