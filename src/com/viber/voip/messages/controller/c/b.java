package com.viber.voip.messages.controller.c;

import java.util.HashSet;
import java.util.Set;

public class b
{
  private static b a;
  private final e b = e.a();
  private Set<Long> c = new HashSet();
  
  public static b a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new b();
      }
      return a;
    }
    finally {}
  }
  
  public void a(long paramLong)
  {
    if (this.c.remove(Long.valueOf(paramLong))) {
      this.b.d(this.c, false);
    }
  }
  
  public void a(Set<Long> paramSet)
  {
    if (this.c.removeAll(paramSet)) {
      this.b.d(this.c, false);
    }
  }
  
  public Set<Long> b()
  {
    return this.c;
  }
  
  public void b(long paramLong)
  {
    if (!this.c.contains(Long.valueOf(paramLong))) {}
    for (int i = 1;; i = 0)
    {
      this.c.add(Long.valueOf(paramLong));
      if (i != 0) {
        this.b.d(this.c, false);
      }
      return;
    }
  }
  
  public void c()
  {
    this.c.clear();
    this.b.d(this.c, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.c.b
 * JD-Core Version:    0.7.0.1
 */