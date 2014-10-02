package com.viber.voip.contacts.c.f.a.a;

import com.viber.voip.contacts.b.b.a.i;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.manager.EntityManager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class d
  implements AsyncEntityManager.FillCursorCompleteCallback
{
  d(a parama, Set paramSet, boolean paramBoolean, h paramh) {}
  
  public void onDataReady(EntityManager paramEntityManager, int paramInt)
  {
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    for (int i = 0; i < paramEntityManager.getCount(); i++)
    {
      com.viber.voip.contacts.b.b.d locald = (com.viber.voip.contacts.b.b.d)paramEntityManager.getEntity(i);
      localHashMap1.put(Long.valueOf(locald.getId()), locald);
      Iterator localIterator = locald.b().iterator();
      while (localIterator.hasNext())
      {
        i locali = (i)localIterator.next();
        localHashMap2.put(Long.valueOf(locali.getId()), locali);
      }
    }
    paramEntityManager.closeCursor();
    a.a(this.d, localHashMap1, localHashMap2, this.a, this.b, this.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.d
 * JD-Core Version:    0.7.0.1
 */