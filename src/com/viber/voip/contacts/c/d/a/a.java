package com.viber.voip.contacts.c.d.a;

import android.util.Pair;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.aa;
import com.viber.voip.contacts.c.d.d;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class a
  implements com.viber.voip.contacts.c.d.a
{
  private static final String a = a.class.getSimpleName();
  private ViberApplication b;
  private aa c;
  private Map<d, b> d = new HashMap();
  
  public a(ViberApplication paramViberApplication, aa paramaa)
  {
    this.b = paramViberApplication;
    this.c = paramaa;
  }
  
  public void a()
  {
    Iterator localIterator = this.d.values().iterator();
    while (localIterator.hasNext()) {
      b.a((b)localIterator.next());
    }
  }
  
  public void a(long paramLong, String paramString)
  {
    try
    {
      HashSet localHashSet1 = new HashSet();
      HashSet localHashSet2 = new HashSet();
      localHashSet1.add(Long.valueOf(paramLong));
      localHashSet2.add(paramString);
      a(localHashSet1, localHashSet2);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(long paramLong, String paramString, boolean paramBoolean, d paramd)
  {
    try
    {
      b localb = new b(this, paramd, paramLong, paramString, paramBoolean);
      this.d.put(paramd, localb);
      b.a(localb);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(d paramd)
  {
    try
    {
      this.d.remove(paramd);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(String paramString, boolean paramBoolean, d paramd)
  {
    try
    {
      b localb = new b(this, paramd, paramString, paramBoolean);
      this.d.put(paramd, localb);
      b.b(localb);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(Map<String, Pair<Long, String>> paramMap)
  {
    try
    {
      Iterator localIterator = this.d.values().iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        if (b.c(localb)) {
          localb.a(paramMap);
        }
      }
    }
    finally {}
  }
  
  public void a(Set<Long> paramSet, Set<String> paramSet1)
  {
    try
    {
      Iterator localIterator = this.d.values().iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        if (b.c(localb)) {
          localb.a(paramSet, paramSet1);
        }
      }
    }
    finally {}
  }
  
  public void a(Set<String> paramSet1, Set<String> paramSet2, Set<String> paramSet3)
  {
    try
    {
      Iterator localIterator = this.d.values().iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        if (b.c(localb)) {
          b.a(localb);
        }
      }
    }
    finally {}
  }
  
  public void b()
  {
    try
    {
      a();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.a.a
 * JD-Core Version:    0.7.0.1
 */