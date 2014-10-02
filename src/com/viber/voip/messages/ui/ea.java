package com.viber.voip.messages.ui;

import com.viber.jni.ptt.PttController;
import java.util.TimerTask;

class ea
  extends TimerTask
{
  private ea(PttViewController paramPttViewController) {}
  
  public void run()
  {
    if ((PttViewController.a(this.a) != null) && (PttViewController.b(this.a) != null)) {
      PttViewController.b(this.a).handleStopRecordPtt(PttViewController.a(this.a));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.ea
 * JD-Core Version:    0.7.0.1
 */