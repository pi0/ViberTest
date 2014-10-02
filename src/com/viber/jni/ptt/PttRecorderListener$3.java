package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttRecorderListener$3
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Recorder>
{
  PttRecorderListener$3(PttRecorderListener paramPttRecorderListener, String paramString, int paramInt) {}
  
  public void execute(PttControllerDelegate.Recorder paramRecorder)
  {
    paramRecorder.onPttRecordStopped(this.val$pttID, this.val$reason);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttRecorderListener.3
 * JD-Core Version:    0.7.0.1
 */