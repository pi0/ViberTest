package com.viber.voip.sound;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class RingtoneService$1
  extends Handler
{
  RingtoneService$1(RingtoneService paramRingtoneService, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void dispatchMessage(Message paramMessage)
  {
    if (1 != paramMessage.what) {
      return;
    }
    this.this$0.stopRingtone();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.RingtoneService.1
 * JD-Core Version:    0.7.0.1
 */