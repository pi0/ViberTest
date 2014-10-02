package com.viber.voip.messages.orm.entity;

import android.content.ContentValues;
import com.viber.voip.messages.orm.annotation.ViberEntityField;
import com.viber.voip.messages.orm.creator.Creator;

public abstract class BaseEntity
  implements Entity
{
  @ViberEntityField(projection="_id")
  protected long id = -1L;
  
  protected static void log(String paramString1, String paramString2, Exception paramException) {}
  
  public int compareTo(Entity paramEntity)
  {
    return -1;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    BaseEntity localBaseEntity;
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      localBaseEntity = (BaseEntity)paramObject;
    } while (this.id == localBaseEntity.id);
    return false;
  }
  
  public ContentValues getContentValues()
  {
    return null;
  }
  
  public Creator getCreator()
  {
    return null;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public String getTable()
  {
    return null;
  }
  
  public int hashCode()
  {
    if (this.id != -1L) {
      return 31 + (int)(this.id ^ this.id >>> 32);
    }
    return super.hashCode();
  }
  
  public boolean isIdValid()
  {
    return this.id > 0L;
  }
  
  public Entity setId(long paramLong)
  {
    this.id = paramLong;
    return this;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.BaseEntity
 * JD-Core Version:    0.7.0.1
 */