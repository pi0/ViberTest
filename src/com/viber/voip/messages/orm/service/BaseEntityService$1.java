package com.viber.voip.messages.orm.service;

import com.viber.voip.messages.orm.entity.Entity;

final class BaseEntityService$1
  implements ServiceSaveCallback
{
  BaseEntityService$1(ServiceSaveCallback paramServiceSaveCallback) {}
  
  public void onDataSave(Entity paramEntity, boolean paramBoolean)
  {
    BaseEntityService.onSave(paramEntity);
    if (this.val$callback != null) {
      this.val$callback.onDataSave(paramEntity, paramBoolean);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.service.BaseEntityService.1
 * JD-Core Version:    0.7.0.1
 */