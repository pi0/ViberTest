package com.viber.voip.contacts.c.f.b;

import com.viber.jni.CAddressBookEntry;
import com.viber.jni.PhoneControllerDelegateAdapter;

class k
  implements Runnable
{
  k(h paramh, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, CAddressBookEntry[] paramArrayOfCAddressBookEntry) {}
  
  public void run()
  {
    PhoneControllerDelegateAdapter[] arrayOfPhoneControllerDelegateAdapter = h.a(this.g);
    int i = arrayOfPhoneControllerDelegateAdapter.length;
    for (int j = 0; j < i; j++) {
      arrayOfPhoneControllerDelegateAdapter[j].onAddressBook(this.a, this.b, this.c, this.d, this.e, this.f);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.k
 * JD-Core Version:    0.7.0.1
 */