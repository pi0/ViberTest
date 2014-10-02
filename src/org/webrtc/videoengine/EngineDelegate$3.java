package org.webrtc.videoengine;

import com.viber.voip.ViberApplication;
import com.viber.voip.sound.AbstractSoundService;
import java.util.Iterator;
import java.util.Set;

class EngineDelegate$3
  implements Runnable
{
  EngineDelegate$3(EngineDelegate paramEngineDelegate, long paramLong) {}
  
  public void run()
  {
    AbstractSoundService.addRemoteVideoRenderer(this.val$nativeEngineAddr, ViERenderer.CreateRemoteRenderView(ViberApplication.getInstance()));
    synchronized (EngineDelegate.access$000())
    {
      Iterator localIterator = EngineDelegate.access$000().iterator();
      if (localIterator.hasNext()) {
        ((EngineDelegate.VideoEngineEventSubscriber)localIterator.next()).onStartRecvVideo();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.EngineDelegate.3
 * JD-Core Version:    0.7.0.1
 */