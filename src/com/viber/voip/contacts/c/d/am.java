package com.viber.voip.contacts.c.d;

import com.viber.voip.contacts.b.b;
import com.viber.voip.messages.orm.manager.AsyncEntityManager.FillCursorCompleteCallback;
import com.viber.voip.messages.orm.manager.EntityManager;

class am
  implements AsyncEntityManager.FillCursorCompleteCallback
{
  am(aa paramaa, h paramh) {}
  
  public void onDataReady(EntityManager paramEntityManager, int paramInt)
  {
    b localb = (b)paramEntityManager.getEntity(0);
    paramEntityManager.closeCursor();
    this.a.a(false, localb);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.am
 * JD-Core Version:    0.7.0.1
 */