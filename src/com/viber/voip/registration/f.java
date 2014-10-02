package com.viber.voip.registration;

import com.viber.voip.contacts.c.q;
import com.viber.voip.contacts.c.v;

class f
  implements v
{
  f(e parame) {}
  
  public void a(q paramq)
  {
    ActivationController.access$100("resumeActivation ACTIVATION_STEP_CHECK_USER_DATA onInfoReady: " + paramq);
    if (paramq == q.a)
    {
      this.a.a.setStep(7, true);
      return;
    }
    this.a.a.setStep(8, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.f
 * JD-Core Version:    0.7.0.1
 */