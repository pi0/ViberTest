package com.viber.voip.messages.extras.a;

import android.location.Location;

class n
  implements b
{
  n(i parami) {}
  
  public void a(Location paramLocation)
  {
    e.b(this.a.a, paramLocation);
    if (paramLocation != null)
    {
      f = e.a(this.a.a).distanceTo(paramLocation);
      e.a("distanceWPSvsGPS = " + f);
      if (f > 1000.0F) {
        e.a(this.a.a, new o(this));
      }
    }
    while (System.currentTimeMillis() - e.a(this.a.a).getTime() <= 120000L)
    {
      float f;
      return;
    }
    e.a("cachedGPSLocation was expired");
    e.a(this.a.a, new p(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.n
 * JD-Core Version:    0.7.0.1
 */