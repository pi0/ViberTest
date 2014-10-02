package com.viber.voip.util;

import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.b;
import java.util.Iterator;
import java.util.Set;

class gc
  implements gi
{
  gc(gb paramgb) {}
  
  public void a(Set<Long> paramSet)
  {
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      Long localLong = (Long)localIterator.next();
      ViberApplication.getInstance().getContactManager().a(localLong.longValue(), false);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.gc
 * JD-Core Version:    0.7.0.1
 */