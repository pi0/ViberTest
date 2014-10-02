package com.viber.voip.messages.extras.a;

import android.location.Location;

class s
  implements b
{
  s(e parame, b paramb) {}
  
  public void a(Location paramLocation)
  {
    e.a("getWPSLocation.onLocationReady = " + paramLocation);
    if (this.a != null) {
      this.a.a(paramLocation);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.s
 * JD-Core Version:    0.7.0.1
 */