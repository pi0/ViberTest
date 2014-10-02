package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttRecorderListener$5
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Recorder>
{
  PttRecorderListener$5(PttRecorderListener paramPttRecorderListener) {}
  
  public void execute(PttControllerDelegate.Recorder paramRecorder)
  {
    paramRecorder.onStopPttIndicator();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.PttRecorderListener.5
 * JD-Core Version:    0.7.0.1
 */