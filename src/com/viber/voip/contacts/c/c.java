package com.viber.voip.contacts.c;

import com.viber.voip.messages.extras.image.h;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class c
  implements Runnable
{
  c(Map paramMap, u paramu) {}
  
  public void run()
  {
    if (!h.a()) {
      this.b.a(new HashMap(0));
    }
    for (;;)
    {
      return;
      d locald = new d(this, this.a.size(), new HashMap());
      Iterator localIterator = this.a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        a.a((String)localEntry.getValue(), (String)localEntry.getKey(), locald);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.c
 * JD-Core Version:    0.7.0.1
 */