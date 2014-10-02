package com.viber.voip.messages.extras.a;

import android.location.Location;
import android.location.LocationManager;
import java.util.Iterator;
import java.util.List;

class ae
  implements Runnable
{
  ae(ad paramad) {}
  
  public void run()
  {
    e.a("getLocation.onTimeOut.remove updates.");
    e.e(this.a.a).removeUpdates(this.a);
    List localList = e.e(this.a.a).getAllProviders();
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Location localLocation = e.e(this.a.a).getLastKnownLocation(str);
        if (localLocation != null)
        {
          e.a("use lastKnown location " + localLocation);
          e.b(this.a.a, localLocation);
        }
      }
    }
    if (this.a.a.c() == null) {
      this.a.a();
    }
    while (ad.a(this.a) == null) {
      return;
    }
    e.a("getLocation. can't retrieve user location. return last known");
    ad.a(this.a).a(this.a.a.c());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.a.ae
 * JD-Core Version:    0.7.0.1
 */