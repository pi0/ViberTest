package com.viber.voip.contacts.c.f;

import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.h;
import com.viber.voip.contacts.c.d.g;
import com.viber.voip.contacts.c.f.b.u;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class b
{
  private static b a;
  private u b;
  private int c;
  private Set<g> d = new HashSet();
  
  private b(ViberApplication paramViberApplication)
  {
    this.b = u.a(paramViberApplication);
    c(null);
  }
  
  public static b a(ViberApplication paramViberApplication)
  {
    if (a == null) {
      a = new b(paramViberApplication);
    }
    return a;
  }
  
  private void b(Set<h> paramSet)
  {
    try
    {
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext()) {
        ((g)localIterator.next()).a(this.c, paramSet);
      }
    }
    finally {}
  }
  
  private void c(Set<h> paramSet)
  {
    this.b.a(new c(this, paramSet));
  }
  
  public void a()
  {
    c(null);
  }
  
  public void a(g paramg)
  {
    try
    {
      this.d.add(paramg);
      paramg.a(this.c, null);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void a(Set<h> paramSet)
  {
    c(paramSet);
  }
  
  public void b(g paramg)
  {
    try
    {
      this.d.remove(paramg);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.c.f.b
 * JD-Core Version:    0.7.0.1
 */