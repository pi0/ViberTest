package com.viber.voip.contacts.c.f.a.a;

import com.viber.voip.contacts.b.b.a.g;
import com.viber.voip.messages.orm.manager.EntityManager;

public class ag
{
  public final boolean a;
  public final String b;
  
  private ag(EntityManager paramEntityManager)
  {
    if (paramEntityManager.getCount() > 0) {}
    StringBuilder localStringBuilder;
    for (boolean bool = true;; bool = false)
    {
      this.a = bool;
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
    this.b = localStringBuilder.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.ag
 * JD-Core Version:    0.7.0.1
 */