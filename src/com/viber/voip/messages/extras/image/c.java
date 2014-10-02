package com.viber.voip.messages.extras.image;

import com.viber.voip.messages.ui.media.SendMediaDataContainer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class c
  implements Runnable
{
  c(b paramb, int paramInt1, SendMediaDataContainer paramSendMediaDataContainer, int paramInt2, int paramInt3) {}
  
  public void run()
  {
    b.a("notify file ready");
    synchronized (b.a(this.e))
    {
      HashSet localHashSet = new HashSet(b.a(this.e));
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((e)localIterator.next()).a(this.a, this.b, this.c, this.d);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.image.c
 * JD-Core Version:    0.7.0.1
 */