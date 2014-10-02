package com.viber.voip.contacts.b.b.a;

import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;

final class d
  extends CreatorHelper
{
  d(Class paramClass)
  {
    super(paramClass);
  }
  
  public c a()
  {
    return new c();
  }
  
  public c a(Cursor paramCursor)
  {
    int i = 1;
    localc = new c();
    try
    {
      c.a(localc, paramCursor.getLong(getProjectionColumn("_id")));
      if (paramCursor.getInt(getProjectionColumn("in_visible_group")) == i)
      {
        int k = i;
        c.a(localc, k);
        if (paramCursor.getInt(getProjectionColumn("has_phone_number")) != i) {
          break label83;
        }
      }
      for (;;)
      {
        c.b(localc, i);
        return localc;
        int m = 0;
        break;
        label83:
        int j = 0;
      }
      return localc;
    }
    catch (Exception localException) {}
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    return a(paramCursor);
  }
  
  public Uri getContentUri()
  {
    return ContactsContract.Contacts.CONTENT_URI;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.d
 * JD-Core Version:    0.7.0.1
 */