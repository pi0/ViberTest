package com.viber.voip.messages.ui.media;

import android.location.Location;
import com.viber.dexshared.GMaps.Factory;
import com.viber.dexshared.GMaps.GoogleMap;
import com.viber.dexshared.GMaps.Marker;
import com.viber.dexshared.GMaps.MarkerOptions;

class x
  implements Runnable
{
  x(LocationMessageActivityV2 paramLocationMessageActivityV2, Location paramLocation) {}
  
  public void run()
  {
    if (LocationMessageActivityV2.g(this.b) != null) {
      LocationMessageActivityV2.g(this.b).setPosition(LocationMessageActivityV2.j(this.b).newLatLng(this.a.getLatitude(), this.a.getLongitude()));
    }
    for (;;)
    {
      LocationMessageActivityV2.a(this.b, this.a);
      return;
      LocationMessageActivityV2.a(this.b, LocationMessageActivityV2.i(this.b).addMarker(LocationMessageActivityV2.k(this.b).position(LocationMessageActivityV2.j(this.b).newLatLng(this.a.getLatitude(), this.a.getLongitude()))));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.x
 * JD-Core Version:    0.7.0.1
 */