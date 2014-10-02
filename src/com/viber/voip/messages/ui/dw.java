package com.viber.voip.messages.ui;

import com.viber.jni.connection.ConnectionDelegate;

class dw
  implements ConnectionDelegate
{
  dw(PttViewController paramPttViewController) {}
  
  public void onConnect()
  {
    this.a.setEnabled(true);
  }
  
  public void onConnectionStateChange(int paramInt)
  {
    PttViewController localPttViewController = this.a;
    if (paramInt == 3) {}
    for (boolean bool = true;; bool = false)
    {
      localPttViewController.setEnabled(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.dw
 * JD-Core Version:    0.7.0.1
 */