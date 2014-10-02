package com.viber.voip.messages.orm.entity;

import android.content.ContentValues;
import android.database.Cursor;

public abstract interface EntityHelper<T extends BaseEntity>
{
  public abstract ContentValues createContentValues(T paramT);
  
  public abstract T createEntity(Cursor paramCursor);
  
  public abstract T createEntity(Cursor paramCursor, int paramInt);
  
  public abstract String[] getProjections();
  
  public abstract String getTable();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.EntityHelper
 * JD-Core Version:    0.7.0.1
 */