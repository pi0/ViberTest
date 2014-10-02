package com.viber.voip.util;

import android.content.ContentValues;
import android.database.Cursor;

public class al
{
  private static ContentValues a = new ContentValues();
  private static ContentValues b = new ContentValues();
  
  public static final void a(Cursor paramCursor)
  {
    if ((paramCursor != null) && (!paramCursor.isClosed())) {}
    try
    {
      paramCursor.close();
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
  }
  
  public static final boolean b(Cursor paramCursor)
  {
    return (paramCursor == null) || (paramCursor.isClosed());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.al
 * JD-Core Version:    0.7.0.1
 */