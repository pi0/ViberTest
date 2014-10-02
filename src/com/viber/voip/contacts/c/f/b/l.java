package com.viber.voip.contacts.c.f.b;

import com.viber.jni.PhoneControllerDelegateAdapter;

class l
  implements Runnable
{
  l(h paramh, String paramString) {}
  
  public void run()
  {
    PhoneControllerDelegateAdapter[] arrayOfPhoneControllerDelegateAdapter = h.a(this.b);
    int i = arrayOfPhoneControllerDelegateAdapter.length;
    for (int j = 0; j < i; j++) {
      arrayOfPhoneControllerDelegateAdapter[j].onUnregisteredNumber(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.l
 * JD-Core Version:    0.7.0.1
 */