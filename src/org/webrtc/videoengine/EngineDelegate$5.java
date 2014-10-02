package org.webrtc.videoengine;

import java.util.Iterator;
import java.util.Set;

class EngineDelegate$5
  implements Runnable
{
  EngineDelegate$5(EngineDelegate paramEngineDelegate, int paramInt) {}
  
  public void run()
  {
    synchronized ()
    {
      Iterator localIterator = EngineDelegate.access$000().iterator();
      if (localIterator.hasNext()) {
        ((EngineDelegate.VideoEngineEventSubscriber)localIterator.next()).onFailure(this.val$failureCode);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.EngineDelegate.5
 * JD-Core Version:    0.7.0.1
 */