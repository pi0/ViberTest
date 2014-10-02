package com.viber.voip.util;

import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.settings.l;
import java.util.Iterator;
import java.util.Set;

class ge
  implements gi
{
  ge(gd paramgd) {}
  
  public void a(Set<Long> paramSet)
  {
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      Long localLong = (Long)localIterator.next();
      if (this.a.c.d() > 0) {
        fz.a(this.a.c).a("recents_count", -1 + this.a.c.d());
      }
      ViberApplication.getInstance().getContactManager().a(localLong.longValue(), this.a.a);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.ge
 * JD-Core Version:    0.7.0.1
 */