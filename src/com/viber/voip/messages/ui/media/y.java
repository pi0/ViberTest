package com.viber.voip.messages.ui.media;

import android.location.Location;
import android.util.Log;
import com.viber.dexshared.GMaps.CameraPosition;
import com.viber.dexshared.GMaps.CameraPosition.Builder;
import com.viber.dexshared.GMaps.CameraUpdateFactory;
import com.viber.dexshared.GMaps.Factory;
import com.viber.dexshared.GMaps.GoogleMap;

class y
  implements Runnable
{
  y(LocationMessageActivityV2 paramLocationMessageActivityV2, Location paramLocation) {}
  
  public void run()
  {
    LocationMessageActivityV2.b(this.b, true);
    GMaps.CameraPosition.Builder localBuilder = LocationMessageActivityV2.j(this.b).newCameraPositionBuilder().target(LocationMessageActivityV2.j(this.b).newLatLng(this.a.getLatitude(), this.a.getLongitude()));
    float f;
    GMaps.CameraPosition localCameraPosition;
    if ("passive".equals(this.a.getProvider()))
    {
      f = 6.0F;
      localCameraPosition = localBuilder.zoom(f).bearing(0.0F).tilt(0.0F).build();
      LocationMessageActivityV2.a(this.b, this.a);
      if (localCameraPosition == null) {
        break label171;
      }
      LocationMessageActivityV2.b(this.b, this.a);
      LocationMessageActivityV2.i(this.b).animateCamera(LocationMessageActivityV2.j(this.b).getCameraUpdateFactory().newCameraPosition(localCameraPosition));
    }
    for (;;)
    {
      LocationMessageActivityV2.a(this.b, localCameraPosition.getTarget());
      return;
      f = 16.0F;
      break;
      label171:
      Log.e("ACRA", "Error getting location position!");
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.y
 * JD-Core Version:    0.7.0.1
 */