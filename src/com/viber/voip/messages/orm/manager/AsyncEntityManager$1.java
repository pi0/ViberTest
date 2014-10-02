package com.viber.voip.messages.orm.manager;

import android.database.Cursor;
import com.viber.voip.util.fl;

class AsyncEntityManager$1
  implements fl
{
  AsyncEntityManager$1(AsyncEntityManager paramAsyncEntityManager, AsyncEntityManager.FillCursorCompleteCallback paramFillCursorCompleteCallback) {}
  
  public void onQueryComplete(int paramInt, Object paramObject, Cursor paramCursor)
  {
    if (this.val$callback != null) {
      this.val$callback.onDataReady(new EntityManager(this.this$0.mCreator, paramCursor), paramInt);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.manager.AsyncEntityManager.1
 * JD-Core Version:    0.7.0.1
 */