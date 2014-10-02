package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttPlayerListener$1
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Player>
{
  PttPlayerListener$1(PttPlayerListener paramPttPlayerListener, String paramString, int paramInt) {}
  
  public void execute(PttControllerDelegate.Player paramPlayer)
  {
    paramPlayer.onStartPlayPttReply(this.val$pttID, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.PttPlayerListener.1
 * JD-Core Version:    0.7.0.1
 */