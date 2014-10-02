package com.viber.service.contacts.sync.a.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class m
{
  final Set<String> a;
  final List<l> b = new ArrayList();
  final Set<Long> c;
  final String d;
  final String e;
  final String f;
  
  public m(List<l> paramList, Set<String> paramSet)
  {
    Object localObject;
    this.a = localObject;
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder();
    this.c = new HashSet();
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = paramSet.iterator();
    while (localIterator1.hasNext())
    {
      l locall2 = (l)localIterator1.next();
      if (localHashMap.containsKey(Long.valueOf(locall2.a)))
      {
        l locall3 = (l)localHashMap.get(Long.valueOf(locall2.a));
        if (locall3.b > locall2.b)
        {
          this.b.remove(locall3);
          localHashMap.put(Long.valueOf(locall2.a), locall2);
          this.b.add(locall2);
        }
      }
      else
      {
        this.b.add(locall2);
        localHashMap.put(Long.valueOf(locall2.a), locall2);
      }
    }
    Iterator localIterator2 = this.b.iterator();
    while (localIterator2.hasNext())
    {
      l locall1 = (l)localIterator2.next();
      this.c.add(Long.valueOf(locall1.b));
      if (localStringBuilder1.length() > 0) {
        localStringBuilder1.append(',');
      }
      localStringBuilder1.append('\'').append(locall1.b).append('\'');
      if (localStringBuilder2.length() > 0) {
        localStringBuilder2.append(',');
      }
      localStringBuilder2.append('\'').append(paramList.a(locall1)).append('\'');
    }
    this.d = localStringBuilder1.toString();
    this.e = localStringBuilder2.toString();
    StringBuilder localStringBuilder3 = new StringBuilder();
    Iterator localIterator3 = localObject.iterator();
    while (localIterator3.hasNext())
    {
      String str = (String)localIterator3.next();
      if (localStringBuilder3.length() > 0) {
        localStringBuilder3.append(',');
      }
      localStringBuilder3.append('\'').append(str).append('\'');
    }
    this.f = localStringBuilder3.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.contacts.sync.a.a.m
 * JD-Core Version:    0.7.0.1
 */