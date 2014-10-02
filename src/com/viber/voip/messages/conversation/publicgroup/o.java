package com.viber.voip.messages.conversation.publicgroup;

import android.location.Location;
import com.viber.voip.messages.extras.a.b;

class o
  implements b
{
  o(CreatePublicGroupActivity paramCreatePublicGroupActivity) {}
  
  public void a(Location paramLocation)
  {
    if (paramLocation != null) {
      this.a.a(paramLocation.getLatitude(), paramLocation.getLongitude(), paramLocation.getExtras());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.o
 * JD-Core Version:    0.7.0.1
 */