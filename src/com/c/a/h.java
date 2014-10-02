package com.c.a;

import java.util.Iterator;
import java.util.List;

public class h
{
  final String a;
  final i b;
  g[] c;
  private final List<b> d;
  
  public void a(g paramg, boolean paramBoolean, int paramInt)
  {
    for (;;)
    {
      Iterator localIterator;
      synchronized (this.c)
      {
        int i = this.c.length;
        g[] arrayOfg2;
        if (i < paramInt)
        {
          arrayOfg2 = new g[i + 1];
          System.arraycopy(this.c, 0, arrayOfg2, 0, i);
          arrayOfg2[i] = paramg;
          this.c = arrayOfg2;
          localIterator = this.d.iterator();
          if (localIterator.hasNext()) {}
        }
        else
        {
          arrayOfg2 = new g[paramInt];
          System.arraycopy(this.c, 1, arrayOfg2, 0, i - 1);
          arrayOfg2[(paramInt - 1)] = paramg;
        }
      }
      b localb = (b)localIterator.next();
      if (paramBoolean) {
        localb.d();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.c.a.h
 * JD-Core Version:    0.7.0.1
 */