package com.viber.voip.messages.orm.service;

import com.viber.voip.messages.orm.entity.Entity;

public abstract interface ServiceCallback
{
  public abstract boolean isPaused();
  
  public abstract void onDataChange(EntityService<?> paramEntityService, int paramInt, Entity... paramVarArgs);
  
  public abstract void onDataReady(EntityService<?> paramEntityService);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.service.ServiceCallback
 * JD-Core Version:    0.7.0.1
 */