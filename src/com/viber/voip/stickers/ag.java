package com.viber.voip.stickers;

import com.viber.voip.stickers.a.a;
import com.viber.voip.stickers.c.f;
import java.util.Iterator;
import java.util.List;

class ag
  implements Runnable
{
  ag(r paramr, List paramList) {}
  
  public void run()
  {
    Iterator localIterator = this.a.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      i += r.a(this.b).a(localf);
    }
    if (i > 0) {
      r.a(this.b, true);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.ag
 * JD-Core Version:    0.7.0.1
 */