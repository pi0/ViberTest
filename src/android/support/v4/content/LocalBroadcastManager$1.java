package android.support.v4.content;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class LocalBroadcastManager$1
  extends Handler
{
  LocalBroadcastManager$1(LocalBroadcastManager paramLocalBroadcastManager, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      super.handleMessage(paramMessage);
      return;
    }
    LocalBroadcastManager.access$000(this.this$0);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     android.support.v4.content.LocalBroadcastManager.1
 * JD-Core Version:    0.7.0.1
 */