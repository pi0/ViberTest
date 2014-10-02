package org.webrtc.videoengine;

import com.viber.voip.sound.AbstractSoundService;
import java.util.Iterator;
import java.util.Set;

class EngineDelegate$2
  implements Runnable
{
  EngineDelegate$2(EngineDelegate paramEngineDelegate, long paramLong) {}
  
  public void run()
  {
    AbstractSoundService.removeLocalVideoRenderer(this.val$nativeEngineAddr, Integer.valueOf(0));
    synchronized (EngineDelegate.access$000())
    {
      Iterator localIterator = EngineDelegate.access$000().iterator();
      if (localIterator.hasNext()) {
        ((EngineDelegate.VideoEngineEventSubscriber)localIterator.next()).onStopSendVideo();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.EngineDelegate.2
 * JD-Core Version:    0.7.0.1
 */