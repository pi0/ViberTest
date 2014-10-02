package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener;

public class PttRecorderListener
  extends ControllerListener<PttControllerDelegate.Recorder>
  implements PttControllerDelegate.Recorder
{
  public void onPttRecordStopped(String paramString, int paramInt)
  {
    notifyListeners(new PttRecorderListener.3(this, paramString, paramInt));
  }
  
  public void onStartPttIndicator()
  {
    notifyListeners(new PttRecorderListener.4(this));
  }
  
  public void onStartRecordPttReply(int paramInt1, String paramString, int paramInt2)
  {
    notifyListeners(new PttRecorderListener.1(this, paramInt1, paramString, paramInt2));
  }
  
  public void onStopPttIndicator()
  {
    notifyListeners(new PttRecorderListener.5(this));
  }
  
  public void onStopRecordPttReply(String paramString, int paramInt)
  {
    notifyListeners(new PttRecorderListener.2(this, paramString, paramInt));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttRecorderListener
 * JD-Core Version:    0.7.0.1
 */