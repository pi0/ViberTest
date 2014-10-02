package com.viber.voip.util;

import android.content.Context;
import com.viber.voip.contacts.b.c;
import com.viber.voip.contacts.b.f;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class aa
  implements c
{
  aa(ah paramah, Context paramContext) {}
  
  public void a(Collection<f> paramCollection)
  {
    if (paramCollection == null) {}
    HashMap localHashMap;
    do
    {
      return;
      localHashMap = new HashMap();
      Iterator localIterator1 = paramCollection.iterator();
      while (localIterator1.hasNext())
      {
        f localf3 = (f)localIterator1.next();
        if (!localHashMap.containsKey(localf3.b())) {
          localHashMap.put(localf3.b(), localf3);
        }
      }
      if (localHashMap.size() == 1)
      {
        f localf2 = (f)localHashMap.values().iterator().next();
        com.viber.voip.viberout.e.c().b(localf2.a());
        this.a.a(localf2.b());
        return;
      }
    } while (localHashMap.size() <= 1);
    HashSet localHashSet = new HashSet();
    Iterator localIterator2 = localHashMap.values().iterator();
    while (localIterator2.hasNext())
    {
      f localf1 = (f)localIterator2.next();
      localHashSet.add(new com.viber.voip.contacts.b.b.a.e(localf1.a(), String.valueOf(localf1.d())));
    }
    w.a(this.b, localHashSet, null, new ab(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.aa
 * JD-Core Version:    0.7.0.1
 */