package com.viber.voip.calls;

import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.service.ServiceSaveCallback;

class c
  implements ServiceSaveCallback
{
  c(a parama, o paramo) {}
  
  public void onDataSave(Entity paramEntity, boolean paramBoolean)
  {
    if (this.a != null) {
      this.a.a(true);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.c
 * JD-Core Version:    0.7.0.1
 */