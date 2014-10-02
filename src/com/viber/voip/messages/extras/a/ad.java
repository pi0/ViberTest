package com.viber.voip.messages.extras.a;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import com.viber.voip.ViberApplication;

class ad
  implements LocationListener
{
  private b b;
  private final Runnable c = new ae(this);
  
  private ad(e parame, b paramb, int paramInt)
  {
    this.b = paramb;
    e.f(parame).postDelayed(this.c, paramInt);
  }
  
  protected void a() {}
  
  public void onLocationChanged(Location paramLocation)
  {
    e.e(this.a).removeUpdates(this);
    if (this.b != null) {
      this.b.a(paramLocation);
    }
  }
  
  public void onProviderDisabled(String paramString)
  {
    ViberApplication.log("ViberLocationManager LocationListener onProviderDisabled provider:" + paramString);
    e.f(this.a).removeCallbacks(this.c);
    e.e(this.a).removeUpdates(this);
    if (this.b != null) {
      this.b.a(null);
    }
  }
  
  public void onProviderEnabled(String paramString)
  {
    ViberApplication.log("ViberLocationManager LocationListener onProviderEnabled provider:" + paramString);
  }
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    ViberApplication.log("ViberLocationManager LocationListener onStatusChanged provider:" + paramString + ",status:" + paramInt + ",extras:" + paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.ad
 * JD-Core Version:    0.7.0.1
 */