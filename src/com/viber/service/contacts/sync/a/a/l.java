package com.viber.service.contacts.sync.a.a;

import android.database.Cursor;

public class l
{
  public final long a;
  public final long b;
  public final long c;
  public final int d;
  
  public l(Cursor paramCursor)
  {
    this.a = paramCursor.getLong(2);
    this.b = paramCursor.getLong(0);
    this.c = paramCursor.getLong(1);
    this.d = paramCursor.getInt(3);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.contacts.sync.a.a.l
 * JD-Core Version:    0.7.0.1
 */