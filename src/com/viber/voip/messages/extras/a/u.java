package com.viber.voip.messages.extras.a;

import android.location.Location;
import android.os.Bundle;
import com.viber.voip.messages.extras.map.d;
import com.viber.voip.messages.extras.map.j;
import com.viber.voip.messages.extras.map.k;
import com.viber.voip.registration.CountryCode;
import java.util.Arrays;

class u
  implements j
{
  u(t paramt, CountryCode paramCountryCode) {}
  
  public void a(k[] paramArrayOfk)
  {
    e.a("onPlacesReady places:" + Arrays.toString(paramArrayOfk));
    int i = paramArrayOfk.length;
    Location localLocation = null;
    if (i > 0)
    {
      k localk = paramArrayOfk[0];
      localLocation = null;
      if (localk != null)
      {
        localLocation = new Location("passive");
        localLocation.setLongitude(d.a(paramArrayOfk[0].b().b()));
        localLocation.setLatitude(d.a(paramArrayOfk[0].b().a()));
        localLocation.setTime(System.currentTimeMillis());
        Bundle localBundle = new Bundle();
        localBundle.putString("countryName", this.a.c());
        localLocation.setExtras(localBundle);
      }
    }
    if (this.b.b.c() == null) {
      e.b(this.b.b, localLocation);
    }
    if (this.b.a != null) {
      this.b.a.a(localLocation);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.u
 * JD-Core Version:    0.7.0.1
 */