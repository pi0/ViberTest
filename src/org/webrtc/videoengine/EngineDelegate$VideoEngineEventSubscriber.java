package org.webrtc.videoengine;

public abstract interface EngineDelegate$VideoEngineEventSubscriber
{
  public abstract void onFailure(int paramInt);
  
  public abstract void onStartRecvVideo();
  
  public abstract void onStartSendVideo();
  
  public abstract void onStopRecvVideo();
  
  public abstract void onStopSendVideo();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.EngineDelegate.VideoEngineEventSubscriber
 * JD-Core Version:    0.7.0.1
 */