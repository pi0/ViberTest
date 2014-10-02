package com.viber.voip.messages.ui.media;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.dexshared.GMaps.CameraPosition;
import com.viber.dexshared.GMaps.CameraPosition.Builder;
import com.viber.dexshared.GMaps.CameraUpdateFactory;
import com.viber.dexshared.GMaps.Factory;
import com.viber.dexshared.GMaps.GoogleMap;
import com.viber.dexshared.GMaps.LatLng;
import com.viber.dexshared.GMaps.Marker;
import com.viber.voip.messages.extras.map.BalloonView;
import com.viber.voip.messages.extras.map.k;

class w
  implements View.OnClickListener
{
  w(LocationMessageActivityV2 paramLocationMessageActivityV2) {}
  
  public void onClick(View paramView)
  {
    LocationMessageActivityV2.c(this.a).removeCallbacks(LocationMessageActivityV2.b(this.a));
    BalloonView localBalloonView;
    if ((LocationMessageActivityV2.g(this.a) != null) && (LocationMessageActivityV2.g(this.a).getPosition() != null) && (LocationMessageActivityV2.g(this.a).getPosition().getLatitude() != 0.0D))
    {
      localBalloonView = LocationMessageActivityV2.f(this.a);
      if (LocationMessageActivityV2.h(this.a) != true) {
        break label270;
      }
    }
    label270:
    for (int i = 4;; i = 0)
    {
      localBalloonView.setVisibility(i);
      LocationMessageActivityV2.e(this.a).e("");
      GMaps.CameraPosition localCameraPosition = LocationMessageActivityV2.j(this.a).newCameraPositionBuilder().target(LocationMessageActivityV2.j(this.a).newLatLng(LocationMessageActivityV2.g(this.a).getPosition().getLatitude(), LocationMessageActivityV2.g(this.a).getPosition().getLongitude())).zoom(LocationMessageActivityV2.i(this.a).getCameraPosition().getZoom()).bearing(LocationMessageActivityV2.i(this.a).getCameraPosition().getBearing()).tilt(LocationMessageActivityV2.i(this.a).getCameraPosition().getTilt()).build();
      LocationMessageActivityV2.i(this.a).animateCamera(LocationMessageActivityV2.j(this.a).getCameraUpdateFactory().newCameraPosition(localCameraPosition));
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.w
 * JD-Core Version:    0.7.0.1
 */