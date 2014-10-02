package com.viber.voip.messages.controller.a;

import android.location.Location;
import android.os.Handler;
import com.viber.voip.messages.extras.a.b;

class x
  implements b
{
  x(p paramp, long paramLong) {}
  
  public void a(Location paramLocation)
  {
    p.c(this.b).post(new y(this, paramLocation));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.x
 * JD-Core Version:    0.7.0.1
 */