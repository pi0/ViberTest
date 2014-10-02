package com.viber.voip.contacts.c.f.a.a;

import com.viber.voip.contacts.b.b.a.c;
import com.viber.voip.messages.orm.manager.EntityManager;

public class ai
{
  public final boolean a;
  public final String b;
  
  public ai(ab paramab, EntityManager paramEntityManager)
  {
    if (paramEntityManager.getCount() > 0) {}
    StringBuilder localStringBuilder;
    for (boolean bool = true;; bool = false)
    {
      this.a = bool;
      if (!this.a) {
        break label115;
      }
      localStringBuilder = new StringBuilder();
      while (i < paramEntityManager.getCount())
      {
        c localc = (c)paramEntityManager.getEntity(i);
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(',');
        }
        localStringBuilder.append(localc.getId());
        i++;
      }
    }
    label115:
    for (this.b = localStringBuilder.toString();; this.b = null)
    {
      paramEntityManager.closeCursor();
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.ai
 * JD-Core Version:    0.7.0.1
 */