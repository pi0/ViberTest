package android.support.v4.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.KeyEvent;

class TransportMediatorJellybeanMR2$3
  extends BroadcastReceiver
{
  TransportMediatorJellybeanMR2$3(TransportMediatorJellybeanMR2 paramTransportMediatorJellybeanMR2) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      KeyEvent localKeyEvent = (KeyEvent)paramIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
      this.this$0.mTransportCallback.handleKey(localKeyEvent);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      Log.w("TransportController", localClassCastException);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     android.support.v4.media.TransportMediatorJellybeanMR2.3
 * JD-Core Version:    0.7.0.1
 */