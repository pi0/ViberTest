package com.viber.voip.messages.orm.manager;

import com.viber.voip.messages.orm.service.ServiceDeleteCallback;
import com.viber.voip.util.fh;

final class AsyncEntityManager$5
  implements fh
{
  AsyncEntityManager$5(ServiceDeleteCallback paramServiceDeleteCallback) {}
  
  public void onDeleteComplete(int paramInt1, Object paramObject, int paramInt2)
  {
    if (this.val$callback != null) {
      this.val$callback.onDataDelete(paramInt2);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.orm.manager.AsyncEntityManager.5
 * JD-Core Version:    0.7.0.1
 */