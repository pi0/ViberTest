package com.viber.voip.contacts.b.b.a;

import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.ContactsContract.Data;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.util.a.a;
import com.viber.voip.util.a.b;

final class f
  extends CreatorHelper
{
  f(Class paramClass)
  {
    super(paramClass);
  }
  
  public e a()
  {
    return new e();
  }
  
  public e a(Cursor paramCursor)
  {
    locale = a();
    try
    {
      e.a(locale, paramCursor.getLong(paramCursor.getColumnIndex("_id")));
      e.b(locale, paramCursor.getLong(getProjectionColumn("contact_id")));
      e.a(locale, paramCursor.getString(getProjectionColumn("mimetype")));
      e.b(locale, paramCursor.getString(getProjectionColumn("data1")));
      e.c(locale, paramCursor.getString(getProjectionColumn("data2")));
      e.d(locale, paramCursor.getString(getProjectionColumn("data3")));
      e.e(locale, paramCursor.getString(getProjectionColumn("data5")));
      e.f(locale, paramCursor.getString(getProjectionColumn("data6")));
      e.c(locale, paramCursor.getInt(getProjectionColumn("photo_id")));
      e.g(locale, paramCursor.getString(getProjectionColumn("display_name")));
      e.a(locale, paramCursor.getInt(getProjectionColumn("version")));
      e.d(locale, paramCursor.getLong(getProjectionColumn("raw_contact_id")));
      e.b(locale, paramCursor.getInt(getProjectionColumn("starred")));
      e.c(locale, paramCursor.getInt(getProjectionColumn("in_visible_group")));
      e.h(locale, paramCursor.getString(getProjectionColumn("lookup")));
      if (Build.VERSION.SDK_INT >= 11) {}
      b localb;
      for (Object localObject = a.a(e.a(locale), paramCursor.getString(getProjectionColumn("phonetic_name")), paramCursor.getString(getProjectionColumn("sort_key")));; localObject = localb)
      {
        e.i(locale, ((b)localObject).b);
        e.j(locale, ((b)localObject).c);
        e.k(locale, ((b)localObject).d);
        return locale;
        localb = a.a(e.a(locale), "", "");
      }
      return locale;
    }
    catch (Exception localException) {}
  }
  
  public Entity createInstance(Cursor paramCursor, int paramInt)
  {
    return a(paramCursor);
  }
  
  public Uri getContentUri()
  {
    return ContactsContract.Data.CONTENT_URI;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.f
 * JD-Core Version:    0.7.0.1
 */