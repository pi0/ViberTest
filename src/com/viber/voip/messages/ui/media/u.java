package com.viber.voip.messages.ui.media;

import android.os.Handler;
import com.viber.dexshared.GMaps.CameraPosition;
import com.viber.dexshared.GMaps.GoogleMap.OnCameraChangeListener;

class u
  implements GMaps.GoogleMap.OnCameraChangeListener
{
  u(LocationMessageActivityV2 paramLocationMessageActivityV2) {}
  
  public void onCameraChange(GMaps.CameraPosition paramCameraPosition)
  {
    LocationMessageActivityV2.a(this.a, paramCameraPosition.getTarget());
    LocationMessageActivityV2.c(this.a).removeCallbacks(LocationMessageActivityV2.b(this.a));
    LocationMessageActivityV2.c(this.a).postDelayed(LocationMessageActivityV2.b(this.a), 700L);
    LocationMessageActivityV2.a(this.a, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.u
 * JD-Core Version:    0.7.0.1
 */