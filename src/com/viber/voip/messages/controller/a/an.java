package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class an
  implements Runnable
{
  an(ac paramac, int paramInt) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.b);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onGetRecentMessagesEnded(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.an
 * JD-Core Version:    0.7.0.1
 */