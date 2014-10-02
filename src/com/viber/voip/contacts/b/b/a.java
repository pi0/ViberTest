package com.viber.voip.contacts.b.b;

import android.content.ContentValues;
import android.database.Cursor;

public class a
{
  public static String[] a = { "_id", "canonized_number", "blocked_date" };
  private static int b = 0;
  private static int c = 1 + b;
  private static int d = 1 + c;
  
  public static ContentValues a(b paramb)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramb.getId() > 0L) {
      localContentValues.put("_id", Long.valueOf(paramb.getId()));
    }
    localContentValues.put("canonized_number", paramb.a());
    localContentValues.put("blocked_date", Long.valueOf(paramb.b()));
    return localContentValues;
  }
  
  public static b a(b paramb, Cursor paramCursor, int paramInt)
  {
    paramb.setId(paramCursor.getLong(paramInt + b));
    paramb.a(paramCursor.getString(paramInt + c));
    paramb.a(paramCursor.getLong(paramInt + d));
    return paramb;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a
 * JD-Core Version:    0.7.0.1
 */