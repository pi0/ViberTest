package com.viber.voip.phone;

import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.a.b;
import com.viber.voip.phone.call.k;

class z
  implements Runnable
{
  private z(PhoneFragmentActivity paramPhoneFragmentActivity) {}
  
  public void run()
  {
    k localk = PhoneFragmentActivity.a(this.a).c();
    new b(localk).a(localk.d(), false);
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.z
 * JD-Core Version:    0.7.0.1
 */