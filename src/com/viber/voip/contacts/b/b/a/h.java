package com.viber.voip.contacts.b.b.a;

import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.RawContacts;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;

final class h
  extends CreatorHelper
{
  h(Class paramClass)
  {
    super(paramClass);
  }
  
  public g a()
  {
    return new g();
  }
  
  public g a(Cursor paramCursor)
  {
    localg = a();
    try
    {
      g.a(localg, paramCursor.getLong(getProjectionColumn("_id")));
      g.b(localg, paramCursor.getLong(getProjectionColumn("contact_id")));
      if (paramCursor.getLong(getProjectionColumn("contact_id")) == 1L) {}
      for (boolean bool = true;; bool = false)
      {
        g.a(localg, bool);
        return localg;
      }
      return localg;
    }
    catch (Exception localException) {}
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    return a(paramCursor);
  }
  
  public Uri getContentUri()
  {
    return ContactsContract.RawContacts.CONTENT_URI;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.h
 * JD-Core Version:    0.7.0.1
 */