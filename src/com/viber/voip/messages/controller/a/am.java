package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;
import java.util.Map;

class am
  implements Runnable
{
  am(ac paramac, long paramLong1, int paramInt1, long paramLong2, int paramInt2, String[] paramArrayOfString, Map paramMap, int paramInt3, int paramInt4) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.i);
    int j = arrayOfa.length;
    for (int k = 0; k < j; k++) {
      arrayOfa[k].onGroupAddMembers(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.am
 * JD-Core Version:    0.7.0.1
 */