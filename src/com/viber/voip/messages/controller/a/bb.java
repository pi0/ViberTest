package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class bb
  implements Runnable
{
  bb(ac paramac, String paramString, long paramLong, int paramInt) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.d);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onSyncConversation(this.a, this.b, this.c);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.bb
 * JD-Core Version:    0.7.0.1
 */