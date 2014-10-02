package com.viber.voip.contacts.c.f.b;

import com.viber.jni.PhoneControllerDelegateAdapter;

class n
  implements Runnable
{
  n(h paramh, boolean paramBoolean, int paramInt1, int paramInt2) {}
  
  public void run()
  {
    PhoneControllerDelegateAdapter[] arrayOfPhoneControllerDelegateAdapter = h.a(this.d);
    int i = arrayOfPhoneControllerDelegateAdapter.length;
    for (int j = 0; j < i; j++) {
      arrayOfPhoneControllerDelegateAdapter[j].onShareAddressBookReply(this.a, this.b, this.c);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.n
 * JD-Core Version:    0.7.0.1
 */