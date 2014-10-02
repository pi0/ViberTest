package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttRecorderListener$1
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Recorder>
{
  PttRecorderListener$1(PttRecorderListener paramPttRecorderListener, int paramInt1, String paramString, int paramInt2) {}
  
  public void execute(PttControllerDelegate.Recorder paramRecorder)
  {
    paramRecorder.onStartRecordPttReply(this.val$seq, this.val$pttID, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttRecorderListener.1
 * JD-Core Version:    0.7.0.1
 */