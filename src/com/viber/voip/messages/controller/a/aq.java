package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class aq
  implements Runnable
{
  aq(ac paramac, long[] paramArrayOfLong1, long[] paramArrayOfLong2) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.c);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onSyncMessages(this.a, this.b);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.aq
 * JD-Core Version:    0.7.0.1
 */