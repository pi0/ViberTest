package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttPlayerListener$2
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Player>
{
  PttPlayerListener$2(PttPlayerListener paramPttPlayerListener, String paramString, int paramInt) {}
  
  public void execute(PttControllerDelegate.Player paramPlayer)
  {
    paramPlayer.onStopPlayPttReply(this.val$pttID, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttPlayerListener.2
 * JD-Core Version:    0.7.0.1
 */