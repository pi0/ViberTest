package com.viber.voip.messages.orm.creator;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.entity.FieldMapping;

public abstract class Creator
{
  public static final boolean DEBUG;
  
  public abstract Entity createEntity();
  
  public abstract Entity createInstance(Cursor paramCursor);
  
  public abstract Entity createInstance(Cursor paramCursor, int paramInt);
  
  public int getAggregateField()
  {
    return -1;
  }
  
  public abstract Uri getContentUri();
  
  public abstract ContentValues getContentValues(Entity paramEntity);
  
  public abstract FieldMapping getFieldMapping();
  
  public abstract String[] getProjections();
  
  public abstract String getTable();
  
  public abstract boolean updateInstance(Entity paramEntity, ContentValues paramContentValues);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.creator.Creator
 * JD-Core Version:    0.7.0.1
 */