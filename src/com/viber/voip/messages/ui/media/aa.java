package com.viber.voip.messages.ui.media;

import com.viber.dexshared.GMaps.CameraPosition;
import com.viber.dexshared.GMaps.GoogleMap;
import com.viber.dexshared.GMaps.LatLng;
import com.viber.voip.messages.extras.map.d;
import com.viber.voip.messages.extras.map.k;

class aa
  implements Runnable
{
  private aa(LocationMessageActivityV2 paramLocationMessageActivityV2) {}
  
  public void run()
  {
    synchronized (LocationMessageActivityV2.e(this.a))
    {
      GMaps.LatLng localLatLng = LocationMessageActivityV2.i(this.a).getCameraPosition().getTarget();
      LocationMessageActivityV2.a(this.a, localLatLng);
      double d1 = LocationMessageActivityV2.e(this.a).c().getLatitude();
      double d2 = LocationMessageActivityV2.e(this.a).c().getLongitude();
      LocationMessageActivityV2.l(this.a).a(d1, d2);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.aa
 * JD-Core Version:    0.7.0.1
 */