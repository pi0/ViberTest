package com.viber.voip.util;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

class bh
{
  private K b;
  private V c;
  private long d;
  private final ReadWriteLock e = new ReentrantReadWriteLock();
  
  bh(K paramK, V paramV, long paramLong)
  {
    if (paramLong == null) {
      throw new IllegalArgumentException("An expiring object cannot be null.");
    }
    this.b = paramV;
    this.c = paramLong;
    Object localObject;
    this.d = localObject;
  }
  
  public long a()
  {
    this.e.readLock().lock();
    try
    {
      long l = this.d;
      return l;
    }
    finally
    {
      this.e.readLock().unlock();
    }
  }
  
  public K b()
  {
    return this.b;
  }
  
  public V c()
  {
    return this.c;
  }
  
  public boolean equals(Object paramObject)
  {
    return this.c.equals(paramObject);
  }
  
  public int hashCode()
  {
    return this.c.hashCode();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.bh
 * JD-Core Version:    0.7.0.1
 */