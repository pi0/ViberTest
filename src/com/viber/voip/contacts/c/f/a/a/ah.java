package com.viber.voip.contacts.c.f.a.a;

import com.viber.voip.contacts.b.b.a.g;
import com.viber.voip.messages.orm.manager.EntityManager;

public class ah
{
  public final boolean a;
  public final String b;
  
  public ah(ab paramab, EntityManager paramEntityManager)
  {
    if (ab.b(paramab).e != paramEntityManager.getCount()) {}
    StringBuilder localStringBuilder;
    for (boolean bool = true;; bool = false)
    {
      this.a = bool;
      if (!this.a) {
        break label122;
      }
      localStringBuilder = new StringBuilder();
      while (i < paramEntityManager.getCount())
      {
        g localg = (g)paramEntityManager.getEntity(i);
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(',');
        }
        localStringBuilder.append(localg.getId());
        i++;
      }
    }
    label122:
    for (this.b = localStringBuilder.toString();; this.b = null)
    {
      paramEntityManager.closeCursor();
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.ah
 * JD-Core Version:    0.7.0.1
 */