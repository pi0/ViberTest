package org.webrtc.videoengine;

import com.viber.voip.sound.AbstractSoundService;
import java.util.Iterator;
import java.util.Set;

class EngineDelegate$4
  implements Runnable
{
  EngineDelegate$4(EngineDelegate paramEngineDelegate, long paramLong) {}
  
  public void run()
  {
    AbstractSoundService.removeRemoteVideoRenderer(this.val$nativeEngineAddr, Integer.valueOf(0));
    synchronized (EngineDelegate.access$000())
    {
      Iterator localIterator = EngineDelegate.access$000().iterator();
      if (localIterator.hasNext()) {
        ((EngineDelegate.VideoEngineEventSubscriber)localIterator.next()).onStopRecvVideo();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.EngineDelegate.4
 * JD-Core Version:    0.7.0.1
 */