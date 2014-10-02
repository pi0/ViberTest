package com.viber.jni.lastonline;

import com.viber.jni.OnlineContactInfo;
import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class LastOnlineListener$2
  implements ControllerListener.ControllerListenerAction<LastOnlineDelegate>
{
  LastOnlineListener$2(LastOnlineListener paramLastOnlineListener, OnlineContactInfo[] paramArrayOfOnlineContactInfo, int paramInt) {}
  
  public void execute(LastOnlineDelegate paramLastOnlineDelegate)
  {
    paramLastOnlineDelegate.onLastOnline(this.val$onlineContactInfo, this.val$seq);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.lastonline.LastOnlineListener.2
 * JD-Core Version:    0.7.0.1
 */