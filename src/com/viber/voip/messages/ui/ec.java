package com.viber.voip.messages.ui;

import java.util.TimerTask;

class ec
  implements Runnable
{
  private ec(PttViewController paramPttViewController) {}
  
  public void run()
  {
    if (PttViewController.d(this.a) != null) {
      PttViewController.d(this.a).cancel();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.ec
 * JD-Core Version:    0.7.0.1
 */