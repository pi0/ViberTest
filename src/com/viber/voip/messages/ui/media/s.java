package com.viber.voip.messages.ui.media;

import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.a.a;

class s
  implements Runnable
{
  s(LocationMessageActivityV2 paramLocationMessageActivityV2) {}
  
  public void run()
  {
    LocationMessageActivityV2.a(this.a);
    ViberApplication.getInstance().getLocationManager().a(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.s
 * JD-Core Version:    0.7.0.1
 */