package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttPlayerListener$3
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Player>
{
  PttPlayerListener$3(PttPlayerListener paramPttPlayerListener, String paramString, int paramInt) {}
  
  public void execute(PttControllerDelegate.Player paramPlayer)
  {
    paramPlayer.onPttPlayStopped(this.val$pttID, this.val$reason);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.PttPlayerListener.3
 * JD-Core Version:    0.7.0.1
 */