package com.viber.voip.messages.orm.manager;

import android.net.Uri;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.service.ServiceSaveCallback;
import com.viber.voip.util.fk;

final class AsyncEntityManager$2
  implements fk
{
  AsyncEntityManager$2(Entity paramEntity, ServiceSaveCallback paramServiceSaveCallback) {}
  
  public void onInsertComplete(int paramInt, Object paramObject, Uri paramUri, Exception paramException)
  {
    boolean bool = false;
    if (paramUri != null)
    {
      long l = Long.parseLong(paramUri.getLastPathSegment());
      this.val$entity.setId(l);
      bool = true;
    }
    if (this.val$callback != null) {
      this.val$callback.onDataSave(this.val$entity, bool);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.manager.AsyncEntityManager.2
 * JD-Core Version:    0.7.0.1
 */