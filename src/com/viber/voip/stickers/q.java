package com.viber.voip.stickers;

import android.util.SparseArray;
import com.viber.voip.stickers.c.a;
import java.util.ArrayList;
import java.util.Iterator;

public class q
{
  private static int[] c = { 200, 201, 204, 202, 203, 205, 207, 206, 210, 209, 208 };
  private final p[] a;
  private final p[] b;
  
  private q(Iterable<a> paramIterable)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    ArrayList localArrayList4 = new ArrayList();
    Iterator localIterator = paramIterable.iterator();
    int i = 0;
    a locala;
    int j;
    if (localIterator.hasNext())
    {
      locala = (a)localIterator.next();
      if ((locala.d != 0) || (locala.e != 0) || (localArrayList3.isEmpty())) {
        break label395;
      }
      localArrayList1.add(new p((a[])localArrayList3.toArray(new a[localArrayList3.size()])));
      localArrayList3.clear();
      if (i != 0)
      {
        localArrayList2.add(new p((a[])localArrayList4.toArray(new a[localArrayList4.size()])));
        localArrayList4.clear();
      }
      if (i == 0) {
        j = 1;
      }
    }
    for (;;)
    {
      label174:
      localArrayList3.add(locala);
      localArrayList4.add(locala);
      locala.g = locala.e;
      locala.i = locala.e;
      int k;
      if (j != 0)
      {
        k = 5 + locala.d;
        label224:
        locala.h = k;
        if (an.b == 10) {
          break label272;
        }
      }
      label272:
      for (locala.f = locala.d;; locala.f = locala.h)
      {
        i = j;
        break;
        j = 0;
        break label174;
        k = locala.d;
        break label224;
      }
      localArrayList1.add(new p((a[])localArrayList3.toArray(new a[localArrayList3.size()])));
      localArrayList2.add(new p((a[])localArrayList4.toArray(new a[localArrayList4.size()])));
      this.b = ((p[])localArrayList2.toArray(new p[localArrayList2.size()]));
      if (an.b != 10)
      {
        this.a = ((p[])localArrayList1.toArray(new p[localArrayList1.size()]));
        return;
      }
      this.a = this.b;
      return;
      label395:
      j = i;
    }
  }
  
  public q(Iterable<a> paramIterable, int paramInt)
  {
    this(a(paramIterable, paramInt));
  }
  
  private static Iterable<a> a(Iterable<a> paramIterable, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return paramIterable;
    }
    return a(paramIterable, c);
  }
  
  private static Iterable<a> a(Iterable<a> paramIterable, int[] paramArrayOfInt)
  {
    SparseArray localSparseArray = new SparseArray(paramArrayOfInt.length);
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      localSparseArray.put(locala.b, locala);
    }
    ArrayList localArrayList = new ArrayList(paramArrayOfInt.length);
    for (int i = 0; i < paramArrayOfInt.length; i++) {
      localArrayList.add(i, localSparseArray.get(paramArrayOfInt[i]));
    }
    return localArrayList;
  }
  
  public p[] a()
  {
    return this.a;
  }
  
  public p[] b()
  {
    return this.b;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.stickers.q
 * JD-Core Version:    0.7.0.1
 */