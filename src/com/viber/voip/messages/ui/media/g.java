package com.viber.voip.messages.ui.media;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.maps.MapController;
import com.google.android.maps.MapView;

class g
  implements View.OnClickListener
{
  g(GoogleApiMapPreViewActivity paramGoogleApiMapPreViewActivity) {}
  
  public void onClick(View paramView)
  {
    if (GoogleApiMapPreViewActivity.a(this.a) != null)
    {
      MapController localMapController = GoogleApiMapPreViewActivity.b(this.a).getController();
      localMapController.setZoom(GoogleApiMapPreViewActivity.b(this.a).getZoomLevel());
      localMapController.animateTo(GoogleApiMapPreViewActivity.a(this.a));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.g
 * JD-Core Version:    0.7.0.1
 */