package com.viber.voip.contacts.c.d;

import com.viber.voip.contacts.b.i;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.manager.EntityManager;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class al
  implements AsyncEntityManager.FillCursorCompleteCallback
{
  al(aa paramaa, k paramk) {}
  
  public void onDataReady(EntityManager paramEntityManager, int paramInt)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = paramEntityManager.iterator();
    while (localIterator.hasNext()) {
      localHashSet.add((i)localIterator.next());
    }
    paramEntityManager.closeCursor();
    if (this.a != null) {
      this.a.a(localHashSet);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.al
 * JD-Core Version:    0.7.0.1
 */