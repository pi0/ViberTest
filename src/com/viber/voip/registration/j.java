package com.viber.voip.registration;

import android.app.Activity;
import com.viber.voip.ViberApplication;
import com.viber.voip.calls.y;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;

class j
  implements y
{
  j(ActivationController paramActivationController, ViberApplication paramViberApplication, Activity paramActivity) {}
  
  public void a()
  {
    this.a.getMessagesManager().c().a(true, new k(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.j
 * JD-Core Version:    0.7.0.1
 */