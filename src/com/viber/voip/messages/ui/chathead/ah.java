package com.viber.voip.messages.ui.chathead;

import android.os.Handler;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;

class ah
  implements DialerControllerDelegate.DialerPhoneState
{
  ah(d paramd) {}
  
  public void onPhoneStateChanged(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      d.s(this.a).postDelayed(new aj(this), 1500L);
      return;
    }
    d.s(this.a).post(new ai(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.ah
 * JD-Core Version:    0.7.0.1
 */