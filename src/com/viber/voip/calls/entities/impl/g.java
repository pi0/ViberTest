package com.viber.voip.calls.entities.impl;

import android.content.ContentValues;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.entity.BaseEntity;
import com.viber.voip.messages.orm.entity.Entity;

public class g
  extends BaseEntity
{
  public static final Creator a = new h();
  private String b;
  private int c;
  private String d;
  private String e;
  private long f;
  private long g;
  private int h;
  private String i;
  private long j;
  
  public long a()
  {
    return this.f;
  }
  
  public void a(int paramInt)
  {
    this.c = paramInt;
  }
  
  public void a(long paramLong)
  {
    this.f = paramLong;
  }
  
  public void a(String paramString)
  {
    this.b = paramString;
  }
  
  public String b()
  {
    return this.b;
  }
  
  public void b(int paramInt)
  {
    this.h = paramInt;
  }
  
  public void b(long paramLong)
  {
    this.g = paramLong;
  }
  
  public void b(String paramString)
  {
    this.d = paramString;
  }
  
  public int c()
  {
    return this.c;
  }
  
  public void c(long paramLong)
  {
    this.j = paramLong;
  }
  
  public void c(String paramString)
  {
    this.i = paramString;
  }
  
  public int compareTo(Entity paramEntity)
  {
    int k = -1;
    g localg;
    if ((paramEntity != null) && ((paramEntity instanceof g)))
    {
      localg = (g)paramEntity;
      if ((getId() != localg.getId()) || (getId() == -1L)) {
        break label45;
      }
      k = 0;
    }
    label45:
    while ((a() == localg.a()) || (a() < localg.a())) {
      return k;
    }
    return 1;
  }
  
  public String d()
  {
    return this.d;
  }
  
  public void d(String paramString)
  {
    this.e = paramString;
  }
  
  public long e()
  {
    return this.g;
  }
  
  public int f()
  {
    return this.h;
  }
  
  public String g()
  {
    return this.i;
  }
  
  public ContentValues getContentValues()
  {
    return a.getContentValues(this);
  }
  
  public Creator getCreator()
  {
    return a;
  }
  
  public String h()
  {
    return this.e;
  }
  
  public long i()
  {
    return this.j;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.entities.impl.g
 * JD-Core Version:    0.7.0.1
 */