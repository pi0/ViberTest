package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PttRecorderListener$4
  implements ControllerListener.ControllerListenerAction<PttControllerDelegate.Recorder>
{
  PttRecorderListener$4(PttRecorderListener paramPttRecorderListener) {}
  
  public void execute(PttControllerDelegate.Recorder paramRecorder)
  {
    paramRecorder.onStartPttIndicator();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttRecorderListener.4
 * JD-Core Version:    0.7.0.1
 */