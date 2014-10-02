package com.viber.voip.e;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.support.v4.app.NotificationCompat.Builder;
import com.viber.voip.a.k;
import com.viber.voip.a.l;
import com.viber.voip.contacts.b.b;
import com.viber.voip.contacts.c.d.i;
import com.viber.voip.util.gn;
import java.util.Iterator;
import java.util.Set;

class w
  implements i
{
  w(u paramu, String paramString) {}
  
  public void a(String paramString, Set<b> paramSet)
  {
    if ((paramSet != null) && (!paramSet.isEmpty()))
    {
      b localb = (b)paramSet.iterator().next();
      String str = u.a(this.b, localb.a(), this.a);
      u.a(this.b, localb.getId());
      Intent localIntent = gn.a(localb.getId(), localb.c(), localb.a(), localb.g(), localb.b(), paramString, com.viber.voip.a.a.s.a.a());
      u.a(localIntent);
      Notification localNotification = u.b(this.b).a(str, System.currentTimeMillis(), localb, paramString, localIntent).build();
      u.b(this.b, localb.getId());
      u.c(this.b).notify(-5, localNotification);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.e.w
 * JD-Core Version:    0.7.0.1
 */