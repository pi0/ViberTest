package com.viber.voip.phone.call.a;

import com.viber.voip.ViberApplication;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.call.n;
import com.viber.voip.settings.l;
import java.util.Observable;
import java.util.Observer;

public class d
  implements Observer
{
  private boolean a = false;
  private Observer b = null;
  
  public void update(Observable paramObservable, Object paramObject)
  {
    n localn = (n)paramObject;
    ViberApplication.log("RateCallListener " + this.a + " " + localn.c() + " " + localn.x() + ", mWrapperdObserver=" + this.b);
    if ((!this.a) && (localn.c() == 8) && (localn.x() >= 480000L))
    {
      locall = ViberApplication.preferences();
      bool = locall.b("show_rate_dialog", true);
      ViberApplication.log("RateCallListener showRatePopoup=" + bool);
      if (bool)
      {
        locall.a("rate_dialog_shown_time", System.currentTimeMillis());
        PhoneActivity.c(true);
      }
    }
    while (this.b == null)
    {
      l locall;
      boolean bool;
      for (;;)
      {
        this.a = true;
        return;
        if (this.b != null) {
          this.b.update(paramObservable, paramObject);
        }
      }
    }
    this.b.update(paramObservable, paramObject);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.call.a.d
 * JD-Core Version:    0.7.0.1
 */