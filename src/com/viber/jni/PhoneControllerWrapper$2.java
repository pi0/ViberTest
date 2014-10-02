package com.viber.jni;

import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.phone.call.i;
import com.viber.voip.phone.call.k;

class PhoneControllerWrapper$2
  implements i
{
  PhoneControllerWrapper$2(PhoneControllerWrapper paramPhoneControllerWrapper) {}
  
  public void onCallInfoReady(k paramk)
  {
    dc.a(dk.a).post(new PhoneControllerWrapper.2.1(this, paramk));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.2
 * JD-Core Version:    0.7.0.1
 */