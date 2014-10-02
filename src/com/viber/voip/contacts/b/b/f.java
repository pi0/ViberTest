package com.viber.voip.contacts.b.b;

import com.viber.voip.contacts.b.c;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.manager.EntityManager;
import java.util.HashSet;
import java.util.Set;

class f
  implements AsyncEntityManager.FillCursorCompleteCallback
{
  f(e parame, c paramc) {}
  
  public void onDataReady(EntityManager paramEntityManager, int paramInt)
  {
    HashSet localHashSet = new HashSet();
    for (int i = 0; i < paramEntityManager.getCount(); i++) {
      localHashSet.add((com.viber.voip.contacts.b.f)paramEntityManager.getEntity(i));
    }
    paramEntityManager.closeCursor();
    this.a.a(localHashSet);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.f
 * JD-Core Version:    0.7.0.1
 */