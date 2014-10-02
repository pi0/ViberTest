package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class ax
  implements Runnable
{
  ax(ac paramac, long paramLong, String paramString1, String paramString2) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.d);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onUserInfoChange(this.a, this.b, this.c);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.ax
 * JD-Core Version:    0.7.0.1
 */