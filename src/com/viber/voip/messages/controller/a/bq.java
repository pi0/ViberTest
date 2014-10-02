package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class bq
  implements Runnable
{
  bq(ac paramac, long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.g);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onChangeGroup(this.a, this.b, this.c, this.d, this.e, this.f);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bq
 * JD-Core Version:    0.7.0.1
 */