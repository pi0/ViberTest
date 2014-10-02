package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class ba
  implements Runnable
{
  ba(ac paramac, long paramLong, String paramString1, String paramString2, int paramInt) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.e);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onHandleSelfDetails(this.a, this.b, this.c, this.d);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.ba
 * JD-Core Version:    0.7.0.1
 */