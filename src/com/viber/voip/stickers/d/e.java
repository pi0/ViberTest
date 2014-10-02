package com.viber.voip.stickers.d;

import java.util.Iterator;
import java.util.Set;

class e
  implements Runnable
{
  e(c paramc, Set paramSet, int paramInt) {}
  
  public void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((g)localIterator.next()).a(this.b);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.d.e
 * JD-Core Version:    0.7.0.1
 */