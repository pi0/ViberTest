package com.viber.voip.contacts.b.b.a;

import android.database.Cursor;
import android.net.Uri;
import com.viber.provider.contacts.f;
import com.viber.voip.contacts.b.b.j;
import com.viber.voip.contacts.b.b.k;
import com.viber.voip.messages.orm.creator.CreatorHelper;
import com.viber.voip.messages.orm.entity.Entity;

final class m
  extends CreatorHelper
{
  m(Class paramClass)
  {
    super(paramClass);
  }
  
  public Entity createEntity()
  {
    return null;
  }
  
  public Entity createInstance(Cursor paramCursor)
  {
    return createInstance(paramCursor, 0);
  }
  
  public final Entity createInstance(Cursor paramCursor, int paramInt)
  {
    localObject = null;
    try
    {
      int i = paramCursor.getInt(getProjectionColumn("mime_type", paramInt));
      switch (i)
      {
      default: 
        localObject = new l();
      }
      for (;;)
      {
        ((l)localObject).h = i;
        l.a((l)localObject, paramCursor.getLong(getProjectionColumn("_id", paramInt)));
        ((l)localObject).i = paramCursor.getLong(getProjectionColumn("contact_id", paramInt));
        ((l)localObject).j = paramCursor.getLong(getProjectionColumn("raw_id", paramInt));
        ((l)localObject).b = paramCursor.getString(getProjectionColumn("data1", paramInt));
        ((l)localObject).c = paramCursor.getString(getProjectionColumn("data2", paramInt));
        ((l)localObject).d = paramCursor.getString(getProjectionColumn("data3", paramInt));
        ((l)localObject).e = paramCursor.getString(getProjectionColumn("data4", paramInt));
        ((l)localObject).f = paramCursor.getString(getProjectionColumn("data5", paramInt));
        ((l)localObject).g = paramCursor.getInt(getProjectionColumn("int_data2", paramInt));
        return localObject;
        localObject = new k();
        continue;
        j localj = new j();
        localObject = localj;
      }
      return localObject;
    }
    catch (Exception localException) {}
  }
  
  public Uri getContentUri()
  {
    return f.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.b.b.a.m
 * JD-Core Version:    0.7.0.1
 */