package com.viber.voip.messages.ui.media;

import android.view.View;
import android.view.View.OnClickListener;
import com.viber.dexshared.GMaps.CameraPosition;
import com.viber.dexshared.GMaps.CameraPosition.Builder;
import com.viber.dexshared.GMaps.CameraUpdateFactory;
import com.viber.dexshared.GMaps.Factory;
import com.viber.dexshared.GMaps.GoogleMap;
import com.viber.dexshared.GMaps.LatLng;
import com.viber.dexshared.GMaps.Marker;

class k
  implements View.OnClickListener
{
  k(GoogleApiMapPreviewActivityV2 paramGoogleApiMapPreviewActivityV2) {}
  
  public void onClick(View paramView)
  {
    if ((GoogleApiMapPreviewActivityV2.c(this.a) != null) && (GoogleApiMapPreviewActivityV2.c(this.a).getPosition() != null) && (GoogleApiMapPreviewActivityV2.c(this.a).getPosition().getLatitude() != 0.0D))
    {
      GMaps.CameraPosition localCameraPosition = GoogleApiMapPreviewActivityV2.e(this.a).newCameraPositionBuilder().target(GoogleApiMapPreviewActivityV2.e(this.a).newLatLng(GoogleApiMapPreviewActivityV2.c(this.a).getPosition().getLatitude(), GoogleApiMapPreviewActivityV2.c(this.a).getPosition().getLongitude())).zoom(GoogleApiMapPreviewActivityV2.d(this.a).getCameraPosition().getZoom()).bearing(GoogleApiMapPreviewActivityV2.d(this.a).getCameraPosition().getBearing()).tilt(GoogleApiMapPreviewActivityV2.d(this.a).getCameraPosition().getTilt()).build();
      GoogleApiMapPreviewActivityV2.d(this.a).animateCamera(GoogleApiMapPreviewActivityV2.e(this.a).getCameraUpdateFactory().newCameraPosition(localCameraPosition));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.k
 * JD-Core Version:    0.7.0.1
 */