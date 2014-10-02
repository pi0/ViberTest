package org.webrtc.videoengine;

import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;

final class ViERenderer$2
  implements SurfaceHolder.Callback
{
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Log.d(ViERenderer.TAG, "surfaceChanged, surface: " + paramSurfaceHolder.getSurface());
    ViERenderer.notifyRenderSurfaceAttached(paramSurfaceHolder.getSurface());
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder) {}
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Log.d(ViERenderer.TAG, "surfaceDestroyed");
    ViERenderer.notifyRenderSurfaceDetached(paramSurfaceHolder.getSurface());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.ViERenderer.2
 * JD-Core Version:    0.7.0.1
 */