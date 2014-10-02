package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttRecorderListener$2
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Recorder>
{
  PttRecorderListener$2(PttRecorderListener paramPttRecorderListener, String paramString, int paramInt) {}
  
  public void execute(PttControllerDelegate.Recorder paramRecorder)
  {
    paramRecorder.onStopRecordPttReply(this.val$pttID, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.PttRecorderListener.2
 * JD-Core Version:    0.7.0.1
 */