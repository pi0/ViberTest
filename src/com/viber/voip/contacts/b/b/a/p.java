package com.viber.voip.contacts.b.b.a;

import android.database.Cursor;
import android.net.Uri;
import com.viber.provider.contacts.g;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;

final class p
  extends CreatorHelper
{
  p(Class paramClass)
  {
    super(paramClass);
  }
  
  public o a()
  {
    return new o();
  }
  
  public Entity createInstance(Cursor paramCursor)
  {
    return createInstance(paramCursor, 0);
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    int i = 1;
    localo = a();
    try
    {
      o.a(localo, paramCursor.getLong(getProjectionColumn("_id", paramInt)));
      o.a(localo, paramCursor.getString(getProjectionColumn("canonized_number", paramInt)));
      o.b(localo, paramCursor.getString(getProjectionColumn("photo", paramInt)));
      o.c(localo, paramCursor.getString(getProjectionColumn("actual_photo", paramInt)));
      if (paramCursor.getInt(getProjectionColumn("clear", paramInt)) == i) {}
      for (;;)
      {
        o.a(localo, i);
        o.d(localo, paramCursor.getString(getProjectionColumn("viber_name", paramInt)));
        return localo;
        int j = 0;
      }
      return localo;
    }
    catch (Exception localException) {}
  }
  
  public Uri getContentUri()
  {
    return g.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.p
 * JD-Core Version:    0.7.0.1
 */