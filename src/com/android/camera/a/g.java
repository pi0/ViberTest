package com.android.camera.a;

import android.net.Uri;
import java.util.Arrays;
import java.util.Comparator;
import java.util.PriorityQueue;

public class g
  implements d
{
  private final d[] a;
  private final PriorityQueue<k> b;
  private long[] c;
  private int d;
  private int[] e;
  private int f;
  
  public g(d[] paramArrayOfd, int paramInt)
  {
    this.a = ((d[])paramArrayOfd.clone());
    if (paramInt == 1) {}
    for (Object localObject = new i(null);; localObject = new j(null))
    {
      this.b = new PriorityQueue(4, (Comparator)localObject);
      this.c = new long[16];
      this.d = 0;
      this.e = new int[this.a.length];
      this.f = -1;
      this.b.clear();
      int i = this.a.length;
      for (int j = 0; j < i; j++)
      {
        k localk = new k(this.a[j], j);
        if (localk.a()) {
          this.b.add(localk);
        }
      }
    }
  }
  
  private k c()
  {
    k localk = (k)this.b.poll();
    if (localk == null) {
      return null;
    }
    if (localk.a == this.f)
    {
      int j = -1 + this.d;
      long[] arrayOfLong3 = this.c;
      arrayOfLong3[j] = (1L + arrayOfLong3[j]);
      return localk;
    }
    this.f = localk.a;
    if (this.c.length == this.d)
    {
      long[] arrayOfLong2 = new long[2 * this.d];
      System.arraycopy(this.c, 0, arrayOfLong2, 0, this.d);
      this.c = arrayOfLong2;
    }
    long[] arrayOfLong1 = this.c;
    int i = this.d;
    this.d = (i + 1);
    arrayOfLong1[i] = (1L | this.f << 32);
    return localk;
  }
  
  public c a(int paramInt)
  {
    int i = 0;
    if ((paramInt < 0) || (paramInt > b())) {
      throw new IndexOutOfBoundsException("index " + paramInt + " out of range max is " + b());
    }
    Arrays.fill(this.e, 0);
    int j = this.d;
    int k = 0;
    int m;
    int n;
    c localc;
    if (k < j)
    {
      long l = this.c[k];
      m = (int)(0xFFFFFFFF & l);
      n = (int)(l >> 32);
      if (i + m > paramInt)
      {
        int i2 = this.e[n] + (paramInt - i);
        localc = this.a[n].a(i2);
      }
    }
    Object localObject;
    do
    {
      return localc;
      int i1 = i + m;
      int[] arrayOfInt = this.e;
      arrayOfInt[n] = (m + arrayOfInt[n]);
      k++;
      i = i1;
      break;
      do
      {
        if (((k)localObject).a()) {
          this.b.add(localObject);
        }
        i++;
        localObject = c();
        if (localObject == null) {
          return null;
        }
      } while (i != paramInt);
      localc = ((k)localObject).c;
    } while (!((k)localObject).a());
    this.b.add(localObject);
    return localc;
  }
  
  public c a(Uri paramUri)
  {
    d[] arrayOfd = this.a;
    int i = arrayOfd.length;
    for (int j = 0; j < i; j++)
    {
      c localc = arrayOfd[j].a(paramUri);
      if (localc != null) {
        return localc;
      }
    }
    return null;
  }
  
  public void a()
  {
    int i = 0;
    int j = this.a.length;
    while (i < j)
    {
      this.a[i].a();
      i++;
    }
  }
  
  public int b()
  {
    int i = 0;
    d[] arrayOfd = this.a;
    int j = arrayOfd.length;
    int k = 0;
    while (i < j)
    {
      k += arrayOfd[i].b();
      i++;
    }
    return k;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.camera.a.g
 * JD-Core Version:    0.7.0.1
 */