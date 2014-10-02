package com.viber.voip.messages.controller.a;

import android.content.Context;
import android.content.Intent;
import android.location.Location;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;

class y
  implements Runnable
{
  y(x paramx, Location paramLocation) {}
  
  public void run()
  {
    MessageEntityImpl localMessageEntityImpl = p.b(this.b.b).m(this.b.a);
    if (localMessageEntityImpl != null)
    {
      if (this.a == null) {
        break label76;
      }
      localMessageEntityImpl.setLocation(this.a);
    }
    for (;;)
    {
      localMessageEntityImpl.setStatus(0);
      localMessageEntityImpl.setExtraStatus(3);
      p.b(this.b.b).b(localMessageEntityImpl);
      p.a(this.b.b);
      return;
      label76:
      p.e(this.b.b).startActivity(new Intent("com.viber.voip.action.SEND_NO_LOCATION_DIALOG").setFlags(268435456));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.a.y
 * JD-Core Version:    0.7.0.1
 */