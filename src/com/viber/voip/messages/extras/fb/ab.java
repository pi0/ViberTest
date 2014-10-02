package com.viber.voip.messages.extras.fb;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

class ab
  implements Runnable
{
  ab(s params, Context paramContext) {}
  
  public void run()
  {
    s.b("sharePendingMessages count = " + s.g().size());
    Iterator localIterator = s.g().keySet().iterator();
    while (localIterator.hasNext())
    {
      long l = ((Long)localIterator.next()).longValue();
      ac localac = (ac)s.g().get(Long.valueOf(l));
      if (localac != null)
      {
        s.a(this.b, this.a, l, localac.a, localac.b, localac.c, localac.d);
        s.b("sharePendingMessage #" + l + " , comment : " + localac.d);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.ab
 * JD-Core Version:    0.7.0.1
 */