package com.viber.service.contacts.sync.a.a;

import android.database.Cursor;
import java.util.HashSet;
import java.util.Set;

public class h
{
  public long a;
  public final long b;
  public final long c;
  public final int d;
  public final String e;
  public final Set<String> f = new HashSet();
  public final Set<String> g = new HashSet();
  
  public h(long paramLong1, long paramLong2, int paramInt, String paramString)
  {
    this.b = paramLong1;
    this.c = paramLong2;
    this.e = paramString;
    this.d = paramInt;
  }
  
  public void a(Cursor paramCursor)
  {
    if (paramCursor.isNull(6)) {
      this.f.add(paramCursor.getString(5));
    }
    for (;;)
    {
      long l = paramCursor.getLong(4);
      if ((this.a == 0L) || (this.a > l)) {
        this.a = l;
      }
      return;
      this.g.add(paramCursor.getString(5));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.contacts.sync.a.a.h
 * JD-Core Version:    0.7.0.1
 */