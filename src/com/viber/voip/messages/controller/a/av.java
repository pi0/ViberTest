package com.viber.voip.messages.controller.a;

import com.viber.jni.PhoneControllerDelegateAdapter;

class av
  implements Runnable
{
  av(ac paramac, String paramString, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void run()
  {
    a[] arrayOfa = ac.a(this.d);
    int i = arrayOfa.length;
    for (int j = 0; j < i; j++) {
      arrayOfa[j].onChangeConversationSettingsReply(this.a, this.b, this.c);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.av
 * JD-Core Version:    0.7.0.1
 */