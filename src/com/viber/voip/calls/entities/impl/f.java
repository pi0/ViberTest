package com.viber.voip.calls.entities.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;
import android.provider.CallLog.Calls;
import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.entity.FieldMapping;

public abstract class f
  extends Creator
{
  public Entity a(g paramg, Cursor paramCursor, int paramInt)
  {
    int i = paramInt + 0;
    try
    {
      paramg.setId(paramCursor.getLong(i));
      paramg.a(paramCursor.getString(paramInt + 1));
      paramg.a(paramCursor.getInt(paramInt + 2));
      paramg.b(paramCursor.getString(paramInt + 3));
      paramg.a(paramCursor.getLong(paramInt + 5));
      paramg.b(paramCursor.getLong(paramInt + 6));
      paramg.d(paramCursor.getString(paramInt + 4));
      paramg.b(paramCursor.getInt(paramInt + 7));
      if (e.a()) {
        paramg.c(paramCursor.getString(paramInt + e.b()));
      }
      if (e.c()) {
        paramg.c(paramCursor.getLong(paramInt + e.d()));
      }
      return paramg;
    }
    catch (Exception localException) {}
    return paramg;
  }
  
  public Uri getContentUri()
  {
    return CallLog.Calls.CONTENT_URI;
  }
  
  public ContentValues getContentValues(Entity paramEntity)
  {
    g localg = (g)paramEntity;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("number", localg.h());
    localContentValues.put("date", Long.valueOf(localg.a()));
    localContentValues.put("duration", Long.valueOf(localg.e()));
    localContentValues.put("type", Integer.valueOf(localg.f()));
    localContentValues.put("new", Integer.valueOf(1));
    localContentValues.put("name", localg.b());
    localContentValues.put("numbertype", Integer.valueOf(localg.c()));
    localContentValues.put("numberlabel", localg.d());
    if (e.a()) {
      localContentValues.put("lookup_uri", localg.g());
    }
    if (e.f()) {
      localContentValues.put("raw_contact_id", Long.valueOf(localg.i()));
    }
    return localContentValues;
  }
  
  public FieldMapping getFieldMapping()
  {
    throw new RuntimeException("method should be implement only for cached entities");
  }
  
  public String[] getProjections()
  {
    return e.e();
  }
  
  public String getTable()
  {
    return CallLog.CONTENT_URI.getLastPathSegment();
  }
  
  public boolean updateInstance(Entity paramEntity, ContentValues paramContentValues)
  {
    throw new RuntimeException("method should be implement only for cached entities");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.entities.impl.f
 * JD-Core Version:    0.7.0.1
 */