package com.viber.voip.messages.orm.service;

import com.viber.voip.messages.orm.entity.Entity;

public abstract interface ServiceSaveCallback
{
  public abstract void onDataSave(Entity paramEntity, boolean paramBoolean);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.service.ServiceSaveCallback
 * JD-Core Version:    0.7.0.1
 */