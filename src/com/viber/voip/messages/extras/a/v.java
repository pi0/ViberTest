package com.viber.voip.messages.extras.a;

import android.location.Address;
import android.location.Location;
import android.text.TextUtils;

class v
  implements c
{
  v(e parame, boolean paramBoolean, Location paramLocation, b paramb) {}
  
  public void a(Address paramAddress, String paramString)
  {
    e.a("setCachedPublicLocation reversed:" + paramAddress + ",addressString:" + paramString);
    b localb;
    if ((!TextUtils.isEmpty(paramString)) && (paramAddress != null))
    {
      if (this.a)
      {
        e.c(this.d, new Location(this.b.getProvider()));
        e.c(this.d).setLatitude(paramAddress.getLatitude());
        e.c(this.d).setLongitude(paramAddress.getLongitude());
      }
    }
    else if (this.c != null)
    {
      localb = this.c;
      if (!this.a) {
        break label189;
      }
    }
    label189:
    for (Location localLocation = e.c(this.d);; localLocation = e.d(this.d))
    {
      localb.a(localLocation);
      return;
      e.d(this.d, new Location(this.b.getProvider()));
      e.d(this.d).setLatitude(paramAddress.getLatitude());
      e.d(this.d).setLongitude(paramAddress.getLongitude());
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.v
 * JD-Core Version:    0.7.0.1
 */