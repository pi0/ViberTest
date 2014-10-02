package com.viber.jni.ptt;

import com.viber.jni.controller.ControllerListener;

public class PttPlayerListener
  extends ControllerListener<PttControllerDelegate.Player>
  implements PttControllerDelegate.Player
{
  public void onPttBufferingStarted(String paramString)
  {
    notifyListeners(new PttPlayerListener.4(this, paramString));
  }
  
  public void onPttBufferingStopped(String paramString)
  {
    notifyListeners(new PttPlayerListener.5(this, paramString));
  }
  
  public void onPttPlayStopped(String paramString, int paramInt)
  {
    notifyListeners(new PttPlayerListener.3(this, paramString, paramInt));
  }
  
  public void onStartPlayPttReply(String paramString, int paramInt)
  {
    notifyListeners(new PttPlayerListener.1(this, paramString, paramInt));
  }
  
  public void onStopPlayPttReply(String paramString, int paramInt)
  {
    notifyListeners(new PttPlayerListener.2(this, paramString, paramInt));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.PttPlayerListener
 * JD-Core Version:    0.7.0.1
 */