package com.viber.voip.messages.orm.entity;

public abstract interface CachedEntity
  extends Entity
{
  public abstract long getCacheId();
  
  public abstract int getPosition();
  
  public abstract int getVersion();
  
  public abstract void onDelete();
  
  public abstract void setPosition(int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.entity.CachedEntity
 * JD-Core Version:    0.7.0.1
 */