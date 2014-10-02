package com.viber.voip.messages.orm.service;

import com.viber.voip.messages.orm.entity.Entity;

public abstract interface ServiceUpdateCallback
{
  public abstract void onDataUpdate(Entity paramEntity, boolean paramBoolean);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.service.ServiceUpdateCallback
 * JD-Core Version:    0.7.0.1
 */