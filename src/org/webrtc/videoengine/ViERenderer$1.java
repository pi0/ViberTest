package org.webrtc.videoengine;

import java.util.Iterator;
import java.util.Set;

final class ViERenderer$1
  implements Runnable
{
  ViERenderer$1(Set paramSet) {}
  
  public void run()
  {
    Iterator localIterator = this.val$cowSetRef.iterator();
    while (localIterator.hasNext()) {
      ((ViERenderer.ViERendererCallback)localIterator.next()).onLocalSurfaceChanged();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.ViERenderer.1
 * JD-Core Version:    0.7.0.1
 */