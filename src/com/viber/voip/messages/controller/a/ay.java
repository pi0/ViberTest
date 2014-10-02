package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class ay
  implements Runnable
{
  ay(ac paramac, int paramInt) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.b);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onServiceStateChanged(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.ay
 * JD-Core Version:    0.7.0.1
 */