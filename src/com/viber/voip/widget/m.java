package com.viber.voip.widget;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

class m
  extends Handler
{
  m(PausableChronometer paramPausableChronometer) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (PausableChronometer.a(this.a))
    {
      PausableChronometer.a(this.a, SystemClock.elapsedRealtime());
      this.a.d();
      sendMessageDelayed(Message.obtain(this, 2), 1000L);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.m
 * JD-Core Version:    0.7.0.1
 */