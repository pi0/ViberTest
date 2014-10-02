package org.webrtc.videoengine;

import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;

final class ViERendererController$1
  implements SurfaceHolder.Callback
{
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Log.d("WBRTCGLN_Java", "surfaceChanged");
    ViERendererController.access$002(paramSurfaceHolder.getSurface());
    if (ViERendererController.access$100() != 0L)
    {
      ViERendererController.setSurface(ViERendererController.access$000(), ViERendererController.access$100());
      Log.d("WBRTCGLN_Java", "native notified (window set)");
    }
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder) {}
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Log.d("WBRTCGLN_Java", "surface destroyed");
    ViERendererController.access$002(null);
    if (ViERendererController.access$100() != 0L)
    {
      ViERendererController.setSurface(null, ViERendererController.access$100());
      Log.d("WBRTCGLN_Java", "native notified (surface destroyed)");
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.ViERendererController.1
 * JD-Core Version:    0.7.0.1
 */