package com.viber.voip.contacts.c.c.a;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class b
  implements com.viber.voip.contacts.c.c.b
{
  protected Set<com.viber.voip.contacts.c.c.d> a = Collections.synchronizedSet(new HashSet());
  
  public static b a()
  {
    return f.a();
  }
  
  private void a(e parame)
  {
    synchronized (this.a)
    {
      HashSet localHashSet = new HashSet(this.a);
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        parame.a((com.viber.voip.contacts.c.c.d)localIterator.next());
      }
    }
  }
  
  public void a(com.viber.voip.contacts.c.c.d paramd)
  {
    synchronized (this.a)
    {
      this.a.add(paramd);
      return;
    }
  }
  
  public void a(Set<String> paramSet, boolean paramBoolean)
  {
    a(new c(this, paramSet, paramBoolean));
  }
  
  public void b(com.viber.voip.contacts.c.c.d paramd)
  {
    synchronized (this.a)
    {
      this.a.remove(paramd);
      return;
    }
  }
  
  public void b(Set<String> paramSet, boolean paramBoolean)
  {
    a(new d(this, paramSet, paramBoolean));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.c.a.b
 * JD-Core Version:    0.7.0.1
 */