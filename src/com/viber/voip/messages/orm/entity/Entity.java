package com.viber.voip.messages.orm.entity;

import android.content.ContentValues;
import com.viber.voip.messages.orm.creator.Creator;

public abstract interface Entity
  extends Comparable<Entity>
{
  public static final boolean DEBUG = false;
  public static final long NO_ID = -1L;
  
  public abstract ContentValues getContentValues();
  
  public abstract Creator getCreator();
  
  public abstract long getId();
  
  public abstract String getTable();
  
  public abstract Entity setId(long paramLong);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.Entity
 * JD-Core Version:    0.7.0.1
 */