package com.viber.voip.calls.entities.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.viber.provider.contacts.c;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.entity.FieldMapping;

public abstract class b
  extends Creator
{
  public Entity a(CallEntityImpl paramCallEntityImpl, Cursor paramCursor, int paramInt)
  {
    int i = 1;
    try
    {
      paramCallEntityImpl.setId(paramCursor.getLong(paramInt + a.a));
      paramCallEntityImpl.b(paramCursor.getLong(paramInt + a.a()));
      paramCallEntityImpl.a(paramCursor.getString(paramInt + a.b()));
      paramCallEntityImpl.b(paramCursor.getString(paramInt + a.c()));
      paramCallEntityImpl.c(paramCursor.getLong(paramInt + a.d()));
      paramCallEntityImpl.d(paramCursor.getLong(paramInt + a.e()));
      paramCallEntityImpl.a(paramCursor.getInt(paramInt + a.f()));
      if (paramCursor.getInt(paramInt + a.g()) == i)
      {
        int k = i;
        paramCallEntityImpl.a(k);
        paramCallEntityImpl.e(paramCursor.getLong(paramInt + a.h()));
        if (paramCursor.getInt(paramInt + a.i()) != i) {
          break label240;
        }
      }
      for (;;)
      {
        paramCallEntityImpl.b(i);
        paramCallEntityImpl.a(paramCursor.getLong(paramInt + a.j()));
        paramCallEntityImpl.c(paramCursor.getInt(paramInt + a.k()));
        paramCallEntityImpl.b(paramCursor.getInt(paramInt + a.l()));
        paramCallEntityImpl.d(paramCursor.getInt(paramInt + a.m()));
        return paramCallEntityImpl;
        int m = 0;
        break;
        label240:
        int j = 0;
      }
      return paramCallEntityImpl;
    }
    catch (Exception localException) {}
  }
  
  public Uri getContentUri()
  {
    return c.a;
  }
  
  public ContentValues getContentValues(Entity paramEntity)
  {
    return a.a((CallEntityImpl)paramEntity);
  }
  
  public FieldMapping getFieldMapping()
  {
    throw new RuntimeException("method should be implement only for cached entities");
  }
  
  public String[] getProjections()
  {
    return a.n();
  }
  
  public String getTable()
  {
    return c.a.getLastPathSegment();
  }
  
  public boolean updateInstance(Entity paramEntity, ContentValues paramContentValues)
  {
    throw new RuntimeException("method should be implement only for cached entities");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.calls.entities.impl.b
 * JD-Core Version:    0.7.0.1
 */