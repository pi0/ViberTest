package com.viber.voip.util;

import com.viber.voip.contacts.b.b;
import com.viber.voip.contacts.c.d.i;
import java.util.Iterator;
import java.util.Set;

final class z
  implements i
{
  z(String paramString, ag paramag) {}
  
  public void a(String paramString, Set<b> paramSet)
  {
    Object localObject1 = this.a;
    if ((paramSet != null) && (!paramSet.isEmpty()))
    {
      Iterator localIterator = paramSet.iterator();
      Object localObject2 = localObject1;
      if (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        if (localObject2.equals(this.a)) {}
        for (String str = localb.a();; str = localObject2 + ", " + localb.a())
        {
          localObject2 = str;
          break;
        }
      }
      localObject1 = localObject2;
    }
    if (this.b != null) {
      this.b.a(paramString, (String)localObject1);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.z
 * JD-Core Version:    0.7.0.1
 */