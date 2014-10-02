package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;
import java.util.Map;

class af
  implements Runnable
{
  af(ac paramac, int paramInt1, int paramInt2, long paramLong, Map paramMap) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.e);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onCreateGroupReply(this.a, this.b, this.c, this.d);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.af
 * JD-Core Version:    0.7.0.1
 */