package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class ae
  implements Runnable
{
  ae(ac paramac, int paramInt1, long paramLong, int paramInt2, int paramInt3) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.e);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onSendMessageReply(this.a, this.b, this.c, this.d);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.ae
 * JD-Core Version:    0.7.0.1
 */