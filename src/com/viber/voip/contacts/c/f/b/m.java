package com.viber.voip.contacts.c.f.b;

import com.viber.jni.PhoneControllerDelegateAdapter;

class m
  implements Runnable
{
  m(h paramh) {}
  
  public void run()
  {
    PhoneControllerDelegateAdapter[] arrayOfPhoneControllerDelegateAdapter = h.a(this.a);
    int i = arrayOfPhoneControllerDelegateAdapter.length;
    for (int j = 0; j < i; j++) {
      arrayOfPhoneControllerDelegateAdapter[j].onShareAddressBook();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.m
 * JD-Core Version:    0.7.0.1
 */