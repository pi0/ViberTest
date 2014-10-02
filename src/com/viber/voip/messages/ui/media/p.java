package com.viber.voip.messages.ui.media;

import android.os.Handler;
import com.google.android.maps.GeoPoint;
import com.viber.voip.messages.extras.map.a;
import com.viber.voip.messages.ui.view.ViberMapView;
import com.viber.voip.messages.ui.view.h;

class p
  implements h
{
  p(LocationMessageActivity paramLocationMessageActivity) {}
  
  public void a()
  {
    GeoPoint localGeoPoint = LocationMessageActivity.b(this.a).getMapCenter();
    LocationMessageActivity.a(this.a, localGeoPoint);
    LocationMessageActivity.f(this.a).removeCallbacks(LocationMessageActivity.e(this.a));
    LocationMessageActivity.f(this.a).postDelayed(LocationMessageActivity.e(this.a), 700L);
  }
  
  public void b()
  {
    LocationMessageActivity.f(this.a).removeCallbacks(LocationMessageActivity.e(this.a));
    LocationMessageActivity.c(this.a).b();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.p
 * JD-Core Version:    0.7.0.1
 */