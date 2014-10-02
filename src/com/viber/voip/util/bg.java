package com.viber.voip.util;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class bg<K, V>
  implements Map<K, V>
{
  private final ConcurrentHashMap<K, bg<K, V>.bh> a;
  private long b;
  
  public bg()
  {
    this(60000);
  }
  
  public bg(int paramInt)
  {
    this.b = paramInt;
    this.a = new ConcurrentHashMap();
  }
  
  public void clear()
  {
    this.a.clear();
  }
  
  public boolean containsKey(Object paramObject)
  {
    return this.a.containsKey(paramObject);
  }
  
  public boolean containsValue(Object paramObject)
  {
    return this.a.containsValue(paramObject);
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean equals(Object paramObject)
  {
    return this.a.equals(paramObject);
  }
  
  public V get(Object paramObject)
  {
    if ((this.a != null) && (paramObject != null))
    {
      bh localbh = (bh)this.a.get(paramObject);
      if (localbh != null)
      {
        if (SystemClock.elapsedRealtime() - localbh.a() >= this.b)
        {
          this.a.remove(localbh.b());
          return null;
        }
        return localbh.c();
      }
    }
    return null;
  }
  
  public int hashCode()
  {
    return this.a.hashCode();
  }
  
  public boolean isEmpty()
  {
    return this.a.isEmpty();
  }
  
  public Set<K> keySet()
  {
    return this.a.keySet();
  }
  
  public V put(K paramK, V paramV)
  {
    bh localbh = (bh)this.a.put(paramK, new bh(this, paramK, paramV, SystemClock.elapsedRealtime()));
    if (localbh == null) {
      return null;
    }
    return localbh.c();
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public V remove(Object paramObject)
  {
    bh localbh = (bh)this.a.remove(paramObject);
    if (localbh == null) {
      return null;
    }
    return localbh.c();
  }
  
  public int size()
  {
    return this.a.size();
  }
  
  public Collection<V> values()
  {
    Collection localCollection = this.a.values();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localCollection.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((bh)localIterator.next()).c());
    }
    return localArrayList;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.bg
 * JD-Core Version:    0.7.0.1
 */