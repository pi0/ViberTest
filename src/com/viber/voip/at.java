package com.viber.voip;

import android.util.Pair;
import java.util.Iterator;
import java.util.List;

class at
  implements Runnable
{
  at(as paramas) {}
  
  public void run()
  {
    synchronized (as.a(this.a))
    {
      if ((as.b(this.a) != -1) && (as.c(this.a) != null) && (((Integer)as.c(this.a).first).intValue() == as.b(this.a)))
      {
        Iterator localIterator = as.d(this.a).iterator();
        if (localIterator.hasNext()) {
          ((ax)localIterator.next()).a(((Integer)as.c(this.a).first).intValue(), (aw)as.c(this.a).second);
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.at
 * JD-Core Version:    0.7.0.1
 */