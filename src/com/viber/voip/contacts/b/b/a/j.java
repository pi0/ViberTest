package com.viber.voip.contacts.b.b.a;

import android.database.Cursor;
import android.net.Uri;
import com.viber.provider.contacts.e;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;

final class j
  extends CreatorHelper
{
  j(Class paramClass)
  {
    super(paramClass);
  }
  
  public i a()
  {
    return new i();
  }
  
  public Entity createInstance(Cursor paramCursor)
  {
    return createInstance(paramCursor, 0);
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    int i = 1;
    locali = a();
    try
    {
      i.a(locali, paramCursor.getLong(getProjectionColumn("_id", paramInt)));
      if (paramCursor.getInt(getProjectionColumn("starred", paramInt)) == i) {}
      for (;;)
      {
        i.a(locali, i);
        i.b(locali, paramCursor.getInt(getProjectionColumn("contact_id", paramInt)));
        i.a(locali, paramCursor.getInt(getProjectionColumn("version", paramInt)));
        return locali;
        int j = 0;
      }
      return locali;
    }
    catch (Exception localException) {}
  }
  
  public Uri getContentUri()
  {
    return e.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.j
 * JD-Core Version:    0.7.0.1
 */