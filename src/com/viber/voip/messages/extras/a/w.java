package com.viber.voip.messages.extras.a;

import android.location.Location;

class w
  implements b
{
  w(e parame, double paramDouble1, double paramDouble2, c paramc) {}
  
  public void a(Location paramLocation)
  {
    e.a("getAddressWithCuttingOwn own location ready = " + paramLocation);
    if (paramLocation != null)
    {
      this.d.a(paramLocation.getLatitude(), paramLocation.getLongitude(), true, new x(this));
      return;
    }
    e.a("getAddressWithCuttingOwn WITHOUT OWN LOCATION!!!");
    this.d.a(this.a, this.b, true, new z(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.w
 * JD-Core Version:    0.7.0.1
 */