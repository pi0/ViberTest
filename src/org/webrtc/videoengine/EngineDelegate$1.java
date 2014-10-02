package org.webrtc.videoengine;

import com.viber.voip.ViberApplication;
import com.viber.voip.sound.AbstractSoundService;
import java.util.Iterator;
import java.util.Set;

class EngineDelegate$1
  implements Runnable
{
  EngineDelegate$1(EngineDelegate paramEngineDelegate, long paramLong) {}
  
  public void run()
  {
    long l = this.val$nativeEngineAddr;
    if (VideoCaptureAndroid.USE_LIVE_CAMERA_PREVIEW) {}
    for (Object localObject1 = null;; localObject1 = ViERenderer.CreateLocalRenderView(ViberApplication.getInstance()))
    {
      AbstractSoundService.addLocalVideoRenderer(l, localObject1);
      synchronized (EngineDelegate.access$000())
      {
        Iterator localIterator = EngineDelegate.access$000().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        ((EngineDelegate.VideoEngineEventSubscriber)localIterator.next()).onStartSendVideo();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.EngineDelegate.1
 * JD-Core Version:    0.7.0.1
 */