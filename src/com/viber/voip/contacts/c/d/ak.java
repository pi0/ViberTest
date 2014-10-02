package com.viber.voip.contacts.c.d;

import com.viber.voip.contacts.b.b.e;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.manager.EntityManager;
import java.util.HashSet;
import java.util.Set;

class ak
  implements AsyncEntityManager.FillCursorCompleteCallback
{
  ak(aa paramaa, i parami, String paramString) {}
  
  public void onDataReady(EntityManager paramEntityManager, int paramInt)
  {
    HashSet localHashSet = new HashSet();
    for (int i = 0; i < paramEntityManager.getCount(); i++) {
      localHashSet.add((e)paramEntityManager.getEntity(i));
    }
    paramEntityManager.closeCursor();
    if (this.a != null) {
      this.a.a(this.b, localHashSet);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.ak
 * JD-Core Version:    0.7.0.1
 */