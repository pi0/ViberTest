package com.viber.voip.contacts.c.d.b;

import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.d.aa;
import com.viber.voip.contacts.c.d.d;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class a
  implements com.viber.voip.contacts.c.d.a
{
  private static final String a = a.class.getSimpleName();
  private ViberApplication b;
  private Map<d, b> c = new HashMap();
  
  public a(ViberApplication paramViberApplication, aa paramaa)
  {
    this.b = paramViberApplication;
  }
  
  public void a()
  {
    Iterator localIterator = this.c.values().iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if (b.a(localb)) {
        b.a(localb, false);
      }
    }
  }
  
  public void a(long paramLong, String paramString) {}
  
  public void a(long paramLong, String paramString, boolean paramBoolean, d paramd)
  {
    b localb = new b(this, paramd, paramLong, paramBoolean);
    this.c.put(paramd, localb);
    b.a(localb, true);
  }
  
  public void a(d paramd)
  {
    try
    {
      this.c.remove(paramd);
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
      this.c.put(paramd, localb);
      localb.a(true);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(Set<String> paramSet1, Set<String> paramSet2, Set<String> paramSet3)
  {
    try
    {
      Iterator localIterator = this.c.values().iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        if (b.a(localb)) {
          b.a(localb, false);
        }
      }
    }
    finally {}
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.d.b.a
 * JD-Core Version:    0.7.0.1
 */