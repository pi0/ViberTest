package com.viber.voip.b;

import com.viber.voip.ViberApplication;

class g
  implements Runnable
{
  g(f paramf) {}
  
  public void run()
  {
    a.c("SmsChecker timeout, SMS not inserted");
    ViberApplication.getInstance().getSmsDbManager().b(this.a);
    f.a(this.a, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.b.g
 * JD-Core Version:    0.7.0.1
 */