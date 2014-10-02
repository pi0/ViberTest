package com.viber.voip.contacts.c.f.a.a;

import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b.a.e;
import com.viber.voip.contacts.b.b.d;
import com.viber.voip.messages.orm.manager.EntityManager;
import com.viber.voip.settings.l;
import java.util.HashSet;
import java.util.Set;

public class af
{
  public final boolean a;
  public final Set<d> b;
  public final long c;
  
  public af(ab paramab, EntityManager paramEntityManager)
  {
    boolean bool;
    HashSet localHashSet;
    int i;
    long l;
    if (paramEntityManager.getCount() < 800)
    {
      bool = true;
      this.a = bool;
      this.b = new HashSet();
      localHashSet = new HashSet();
      i = 0;
      l = -1L;
      label54:
      if (i >= paramEntityManager.getCount()) {
        break label266;
      }
      e locale = (e)paramEntityManager.getEntity(i);
      if (locale != null)
      {
        if ((l != -1L) && (l != locale.e()))
        {
          this.b.add(new d(localHashSet));
          localHashSet.clear();
        }
        l = locale.e();
        localHashSet.add(locale);
        if (i == -1 + paramEntityManager.getCount())
        {
          if (!this.a) {
            break label197;
          }
          this.b.add(new d(localHashSet));
          localHashSet.clear();
        }
      }
    }
    for (;;)
    {
      i++;
      break label54;
      bool = false;
      break;
      label197:
      if (this.b.size() == 0)
      {
        this.b.add(new d().a(localHashSet));
        l += 1L;
        if (!ViberApplication.preferences().b("preff_analytics_rows_more_500_shown", false)) {
          ViberApplication.preferences().a("preff_analytics_rows_more_500_shown", true);
        }
      }
    }
    label266:
    this.c = l;
    paramEntityManager.closeCursor();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.a.a.af
 * JD-Core Version:    0.7.0.1
 */