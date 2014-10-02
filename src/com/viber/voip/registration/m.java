package com.viber.voip.registration;

import com.viber.voip.ViberApplication;

class m
  implements Runnable
{
  m(ActivationController paramActivationController, df paramdf) {}
  
  public void run()
  {
    if (this.a == null) {
      if (ActivationController.access$700(this.b) != null) {
        ActivationController.access$700(this.b).a();
      }
    }
    label148:
    do
    {
      do
      {
        do
        {
          return;
          if (!this.a.a) {
            break label148;
          }
          ActivationController.access$100("$RegisterTask STORING CANONIZED NUMBER IN PREF = " + this.a.f);
          ViberApplication.getInstance().getActivationController().storeRegNumberCanonized(this.a.f);
          if (!this.a.e) {
            break;
          }
        } while (ActivationController.access$700(this.b) == null);
        ActivationController.access$700(this.b).a(this.a);
        return;
      } while (ActivationController.access$700(this.b) == null);
      ActivationController.access$700(this.b).b(this.a);
      return;
    } while (ActivationController.access$700(this.b) == null);
    ActivationController.access$700(this.b).a(this.a.c, this.a.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.m
 * JD-Core Version:    0.7.0.1
 */