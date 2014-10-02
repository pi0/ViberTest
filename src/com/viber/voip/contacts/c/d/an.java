package com.viber.voip.contacts.c.d;

import com.viber.voip.contacts.b.b;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.manager.EntityManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class an
  implements AsyncEntityManager.FillCursorCompleteCallback
{
  an(aa paramaa, j paramj) {}
  
  public void onDataReady(EntityManager paramEntityManager, int paramInt)
  {
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    for (int i = 0; i < paramEntityManager.getCount(); i++)
    {
      b localb = (b)paramEntityManager.getEntity(i);
      localHashMap1.put(Long.valueOf(localb.getId()), localb);
      Iterator localIterator = localb.l().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ArrayList localArrayList;
        if (!localHashMap2.containsKey(str))
        {
          localArrayList = new ArrayList();
          localHashMap2.put(str, localArrayList);
        }
        for (Object localObject = localArrayList;; localObject = (List)localHashMap2.get(str))
        {
          ((List)localObject).add(localb);
          break;
        }
      }
    }
    paramEntityManager.closeCursor();
    if (this.a != null) {
      this.a.a(localHashMap2, localHashMap1);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.an
 * JD-Core Version:    0.7.0.1
 */