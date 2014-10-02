package com.viber.voip.messages.extras.a;

import android.location.Location;

class l
  implements b
{
  l(i parami) {}
  
  public void a(Location paramLocation)
  {
    if (paramLocation != null)
    {
      float f1 = e.b(this.a.a).distanceTo(paramLocation);
      float f2 = e.a(this.a.a).distanceTo(paramLocation);
      e.a("distanceWPS = " + f1 + ", distanceWPSvsGPS = " + f2);
      if ((f1 > 1000.0F) || (f2 > 1000.0F))
      {
        e.b(this.a.a, paramLocation);
        e.a(this.a.a, new m(this));
      }
    }
    else
    {
      return;
    }
    e.a("nothing to init. caches are valid.");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.l
 * JD-Core Version:    0.7.0.1
 */