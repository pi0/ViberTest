package com.viber.voip.messages.orm.manager;

import android.net.Uri;
import com.viber.voip.messages.orm.entity.Entity;
import com.viber.voip.messages.orm.service.ServiceUpdateCallback;
import com.viber.voip.util.fn;

final class AsyncEntityManager$4
  implements fn
{
  AsyncEntityManager$4(ServiceUpdateCallback paramServiceUpdateCallback, Entity paramEntity) {}
  
  public void onUpdateComplete(int paramInt1, Object paramObject, Uri paramUri, Exception paramException, int paramInt2)
  {
    if (this.val$callback != null)
    {
      if ((paramInt2 > 0) && (paramUri != null)) {
        this.val$callback.onDataUpdate(this.val$entity, true);
      }
    }
    else {
      return;
    }
    this.val$callback.onDataUpdate(null, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.manager.AsyncEntityManager.4
 * JD-Core Version:    0.7.0.1
 */