package com.viber.voip.contacts.c.b;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.block.i;
import com.viber.voip.registration.dj;

class c
  implements PhoneControllerWrapper.InitializedListener
{
  c(a parama) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    if (!dj.d()) {
      a.a(this.a);
    }
    for (;;)
    {
      a.b(this.a).removeInitializedListener(this);
      return;
      i.a();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.b.c
 * JD-Core Version:    0.7.0.1
 */