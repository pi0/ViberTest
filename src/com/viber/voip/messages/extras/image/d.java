package com.viber.voip.messages.extras.image;

import com.viber.voip.messages.ui.media.SendMediaDataContainer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class d
  implements Runnable
{
  d(b paramb, int paramInt, SendMediaDataContainer[] paramArrayOfSendMediaDataContainer) {}
  
  public void run()
  {
    b.a("notify all files ready");
    synchronized (b.a(this.c))
    {
      HashSet localHashSet = new HashSet(b.a(this.c));
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((e)localIterator.next()).a(this.a, this.b);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.d
 * JD-Core Version:    0.7.0.1
 */