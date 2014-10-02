package com.viber.voip.messages.ui.media;

import com.google.android.maps.GeoPoint;
import com.viber.voip.messages.extras.map.a;
import com.viber.voip.messages.extras.map.b;
import com.viber.voip.messages.extras.map.d;
import com.viber.voip.messages.extras.map.k;
import com.viber.voip.messages.ui.view.ViberMapView;

class r
  implements Runnable
{
  private r(LocationMessageActivity paramLocationMessageActivity) {}
  
  public void run()
  {
    synchronized (LocationMessageActivity.a(this.a))
    {
      GeoPoint localGeoPoint = LocationMessageActivity.b(this.a).getMapCenter();
      LocationMessageActivity.a(this.a, localGeoPoint);
      double d1 = d.a(LocationMessageActivity.a(this.a).b().a());
      double d2 = d.a(LocationMessageActivity.a(this.a).b().b());
      LocationMessageActivity.c(this.a).a(LocationMessageActivity.a(this.a)).a();
      LocationMessageActivity.d(this.a).a(d1, d2);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.r
 * JD-Core Version:    0.7.0.1
 */