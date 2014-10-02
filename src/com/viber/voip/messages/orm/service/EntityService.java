package com.viber.voip.messages.orm.service;

import com.viber.voip.messages.orm.creator.Creator;
import com.viber.voip.messages.orm.entity.Entity;

public abstract interface EntityService<T extends Entity>
{
  public static final int NO_ID = -1;
  public static final int SEARCH_DELAY = 300;
  
  public abstract Entity findEntity(long paramLong);
  
  public abstract int getCount();
  
  public abstract Entity getEntity(int paramInt);
  
  public abstract Creator getHelper();
  
  public abstract boolean isInit();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.service.EntityService
 * JD-Core Version:    0.7.0.1
 */