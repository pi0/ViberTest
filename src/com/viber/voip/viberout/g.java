package com.viber.voip.viberout;

import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.cq;

class g
  implements Runnable
{
  g(e parame) {}
  
  public void run()
  {
    if (!cq.a(ViberApplication.getInstance()))
    {
      e.a(this.a, true);
      e.d("mForegroundCheck.run(), viber gone home!");
      return;
    }
    e.d("mForegroundCheck.run(), viber on foreground");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.g
 * JD-Core Version:    0.7.0.1
 */