package com.viber.voip.messages.orm.manager;

import android.database.ContentObserver;
import android.os.Handler;

class AsyncEntityManager$7
  extends ContentObserver
{
  AsyncEntityManager$7(AsyncEntityManager paramAsyncEntityManager, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  public boolean deliverSelfNotifications()
  {
    return true;
  }
  
  public void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    this.this$0.fillCursor(this.this$0.mSortOrder, this.this$0.mSelection, this.this$0.mSelectionArgs);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.orm.manager.AsyncEntityManager.7
 * JD-Core Version:    0.7.0.1
 */