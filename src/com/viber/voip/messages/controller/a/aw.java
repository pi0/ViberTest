package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class aw
  implements Runnable
{
  aw(ac paramac, long paramLong, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.d);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onMuteGroupReply(this.a, this.b, this.c);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.aw
 * JD-Core Version:    0.7.0.1
 */