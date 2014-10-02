package com.viber.voip.messages.orm.entity;

import android.content.ContentValues;
import com.viber.voip.messages.orm.annotation.ViberEntityField;

public abstract class BaseCachedEntity
  implements CachedEntity
{
  @ViberEntityField(projection="_id")
  protected long id = -1L;
  protected int position = -1;
  protected int version = 0;
  
  protected static void log(String paramString1, String paramString2, Exception paramException) {}
  
  public int compareTo(Entity paramEntity)
  {
    return -1;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    BaseCachedEntity localBaseCachedEntity;
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      localBaseCachedEntity = (BaseCachedEntity)paramObject;
    } while (this.id == localBaseCachedEntity.id);
    return false;
  }
  
  public long getCacheId()
  {
    return -1L;
  }
  
  public ContentValues getContentValues()
  {
    ContentValues localContentValues = new ContentValues();
    if (this.id != -1L) {
      localContentValues.put("_id", Long.valueOf(this.id));
    }
    return localContentValues;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public int getPosition()
  {
    return this.position;
  }
  
  public int getVersion()
  {
    return this.version;
  }
  
  public boolean hasId()
  {
    return getId() != -1L;
  }
  
  public int hashCode()
  {
    return 31 + (int)(this.id ^ this.id >>> 32);
  }
  
  protected void incrementVersion()
  {
    this.version = (1 + this.version);
  }
  
  public void onDelete() {}
  
  public Entity setId(long paramLong)
  {
    this.id = paramLong;
    return this;
  }
  
  public void setPosition(int paramInt)
  {
    this.position = paramInt;
  }
  
  public boolean update(Entity paramEntity)
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.BaseCachedEntity
 * JD-Core Version:    0.7.0.1
 */