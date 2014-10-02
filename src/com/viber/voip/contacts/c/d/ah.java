package com.viber.voip.contacts.c.d;

import com.viber.voip.contacts.b.b.a.i;
import com.viber.voip.contacts.b.b.a.l;
import com.viber.voip.contacts.b.b.d;
import com.viber.voip.contacts.b.b.k;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.manager.EntityManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class ah
  implements AsyncEntityManager.FillCursorCompleteCallback
{
  ah(aa paramaa, String paramString, as paramas) {}
  
  public void onDataReady(EntityManager paramEntityManager, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < paramEntityManager.getCount(); i++)
    {
      Iterator localIterator1 = ((d)paramEntityManager.getEntity(i)).b().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((i)localIterator1.next()).b().iterator();
        while (localIterator2.hasNext())
        {
          l locall = (l)localIterator2.next();
          if ((locall instanceof k))
          {
            k localk = (k)locall;
            if (localk.b().equals(this.a)) {
              localArrayList.add(localk);
            }
          }
        }
      }
    }
    paramEntityManager.closeCursor();
    if (this.b != null) {
      this.b.a(localArrayList);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.ah
 * JD-Core Version:    0.7.0.1
 */