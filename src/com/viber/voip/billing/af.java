package com.viber.voip.billing;

import com.viber.voip.contacts.b.b;
import com.viber.voip.contacts.c.d.i;
import java.util.Iterator;
import java.util.Set;

class af
  implements i
{
  af(ae paramae, ag paramag) {}
  
  public void a(String paramString, Set<b> paramSet)
  {
    if (paramSet != null)
    {
      Iterator localIterator = paramSet.iterator();
      if (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        ae.a(this.b, localb.a());
        this.a.a(ae.a(this.b));
        return;
      }
    }
    this.a.a(null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.af
 * JD-Core Version:    0.7.0.1
 */