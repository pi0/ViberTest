package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttPlayerListener$4
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Player>
{
  PttPlayerListener$4(PttPlayerListener paramPttPlayerListener, String paramString) {}
  
  public void execute(PttControllerDelegate.Player paramPlayer)
  {
    paramPlayer.onPttBufferingStarted(this.val$pttID);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.PttPlayerListener.4
 * JD-Core Version:    0.7.0.1
 */