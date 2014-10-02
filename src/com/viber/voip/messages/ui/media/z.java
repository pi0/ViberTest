package com.viber.voip.messages.ui.media;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.dexshared.GMaps.CameraPosition;
import com.viber.dexshared.GMaps.GoogleMap;
import com.viber.dexshared.GMaps.LatLng;
import com.viber.voip.a.bc;
import com.viber.voip.a.m;
import com.viber.voip.messages.extras.map.b;
import com.viber.voip.messages.extras.map.k;

class z
  implements View.OnClickListener
{
  z(LocationMessageActivityV2 paramLocationMessageActivityV2) {}
  
  public void onClick(View paramView)
  {
    synchronized (LocationMessageActivityV2.e(this.a))
    {
      bc.a().a(LocationMessageActivityV2.m(this.a).e());
      if (LocationMessageActivityV2.e(this.a).b() != null)
      {
        Intent localIntent1 = new Intent();
        localIntent1.putExtra("extra_location_lat", LocationMessageActivityV2.e(this.a).b().a());
        localIntent1.putExtra("extra_location_lon", LocationMessageActivityV2.e(this.a).b().b());
        localIntent1.putExtra("extra_location_text", LocationMessageActivityV2.e(this.a).d());
        this.a.setResult(-1, localIntent1);
        this.a.finish();
        return;
      }
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("extra_location_lat", (int)(1000000.0D * LocationMessageActivityV2.i(this.a).getCameraPosition().getTarget().getLatitude()));
      localIntent2.putExtra("extra_location_lon", (int)(1000000.0D * LocationMessageActivityV2.i(this.a).getCameraPosition().getTarget().getLongitude()));
      localIntent2.putExtra("extra_location_text", "");
      this.a.setResult(-1, localIntent2);
      this.a.finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.z
 * JD-Core Version:    0.7.0.1
 */