package com.viber.voip.contacts.c.f.b;

import com.viber.jni.PhoneControllerDelegateAdapter;

class i
  implements Runnable
{
  i(h paramh, int paramInt) {}
  
  public void run()
  {
    PhoneControllerDelegateAdapter[] arrayOfPhoneControllerDelegateAdapter = h.a(this.b);
    int i = arrayOfPhoneControllerDelegateAdapter.length;
    for (int j = 0; j < i; j++) {
      arrayOfPhoneControllerDelegateAdapter[j].onServiceStateChanged(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.i
 * JD-Core Version:    0.7.0.1
 */