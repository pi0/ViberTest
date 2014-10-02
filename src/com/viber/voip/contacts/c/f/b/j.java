package com.viber.voip.contacts.c.f.b;

import com.viber.jni.PhoneControllerDelegateAdapter;
import java.util.Map;

class j
  implements Runnable
{
  j(h paramh, boolean paramBoolean1, boolean paramBoolean2, Map paramMap, int paramInt1, boolean paramBoolean3, String paramString1, String paramString2, int paramInt2, int paramInt3) {}
  
  public void run()
  {
    PhoneControllerDelegateAdapter[] arrayOfPhoneControllerDelegateAdapter = h.a(this.j);
    int k = arrayOfPhoneControllerDelegateAdapter.length;
    for (int m = 0; m < k; m++) {
      arrayOfPhoneControllerDelegateAdapter[m].onRegisteredNumbers(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b.j
 * JD-Core Version:    0.7.0.1
 */