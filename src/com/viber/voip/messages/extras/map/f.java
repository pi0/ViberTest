package com.viber.voip.messages.extras.map;

import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.a.a;

class f
  extends e
{
  public f(d paramd, double paramDouble1, double paramDouble2)
  {
    super(paramd, paramDouble1, paramDouble2);
  }
  
  public void b()
  {
    ViberApplication.getInstance().getLocationManager().a(this.a, this.b, new g(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.map.f
 * JD-Core Version:    0.7.0.1
 */