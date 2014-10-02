package com.viber.voip.ui.call.a;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class e
  implements d
{
  public static int a = -1;
  public static int b = 1;
  private long c;
  private Set<d> d = new HashSet();
  private float e;
  private int f = b;
  private int g = 0;
  private boolean h = false;
  private boolean i = false;
  
  public e(long paramLong)
  {
    this(paramLong, (d[])null);
  }
  
  public e(long paramLong, d paramd)
  {
    this(paramLong, new d[] { paramd });
  }
  
  public e(long paramLong, d[] paramArrayOfd)
  {
    this.e = ((float)paramLong);
    if (paramArrayOfd != null) {
      Collections.addAll(this.d, paramArrayOfd);
    }
  }
  
  public void a()
  {
    this.d.clear();
  }
  
  public void a(float paramFloat)
  {
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext()) {
      ((d)localIterator.next()).a(paramFloat);
    }
  }
  
  public void a(int paramInt)
  {
    this.f = paramInt;
  }
  
  public void a(long paramLong)
  {
    int j;
    float f1;
    float f2;
    if ((a == this.f) || (this.f > this.g))
    {
      j = 1;
      f1 = (float)(paramLong - this.c) / this.e;
      if ((j == 0) || ((0L != this.c) && (f1 <= 1.0F))) {
        break label125;
      }
      this.c = paramLong;
      f2 = 0.0F;
      this.g = (1 + this.g);
      this.i = false;
    }
    for (;;)
    {
      if ((f2 <= 1.0F) || (!this.i))
      {
        if (this.h) {
          f2 = 1.0F - f2;
        }
        a(f2);
        return;
        j = 0;
        break;
      }
      this.i = true;
      return;
      label125:
      f2 = f1;
    }
  }
  
  public void a(d paramd)
  {
    this.d.add(paramd);
  }
  
  public void c()
  {
    this.g = 0;
    this.c = 0L;
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext()) {
      ((d)localIterator.next()).c();
    }
  }
  
  public boolean d()
  {
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext()) {
      if (((d)localIterator.next()).d()) {
        return true;
      }
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.call.a.e
 * JD-Core Version:    0.7.0.1
 */