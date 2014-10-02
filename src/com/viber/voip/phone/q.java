package com.viber.voip.phone;

import com.viber.voip.ViberApplication;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.util.hd;
import java.util.TimerTask;

class q
  extends TimerTask
{
  private k b;
  private boolean c;
  
  public q(PhoneActivity paramPhoneActivity, k paramk)
  {
    this.b = paramk;
    a();
  }
  
  private void a()
  {
    this.c = false;
    if ((this.b.f()) || (this.b.j())) {
      hd.a(ViberApplication.getInstance(), this.b.c().b(), new r(this));
    }
  }
  
  public void run()
  {
    this.a.runOnUiThread(new s(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.q
 * JD-Core Version:    0.7.0.1
 */