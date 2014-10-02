package com.viber.voip.registration;

import com.viber.voip.HomeActivity;
import com.viber.voip.ViberApplication;

class c
  implements Runnable
{
  c(b paramb) {}
  
  public void run()
  {
    if ((b.a(this.a)) && (!ViberApplication.getInstance().isActivityOnForeground(RegistrationActivity.class.getName())) && (!ViberApplication.getInstance().isActivityOnForeground(HomeActivity.class.getName()))) {
      b.b(this.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.c
 * JD-Core Version:    0.7.0.1
 */