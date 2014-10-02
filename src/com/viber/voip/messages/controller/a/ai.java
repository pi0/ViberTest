package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.jni.PublicGroupChangeEvent;
import com.viber.jni.PublicGroupMessage;

class ai
  implements Runnable
{
  ai(ac paramac, int paramInt1, long paramLong, PublicGroupMessage[] paramArrayOfPublicGroupMessage, PublicGroupChangeEvent[] paramArrayOfPublicGroupChangeEvent, int paramInt2) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.f);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onGetPublicGroupMessages(this.a, this.b, this.c, this.d, this.e);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.ai
 * JD-Core Version:    0.7.0.1
 */