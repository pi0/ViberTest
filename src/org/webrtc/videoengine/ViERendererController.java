package org.webrtc.videoengine;

import android.content.Context;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;

public class ViERendererController
{
  private static SurfaceHolder g_localRenderer = null;
  private static SurfaceView g_localSurface = null;
  private static long g_nativeObject = 0L;
  private static SurfaceView g_remoteSurface = null;
  private static Surface g_remoteWindow = null;
  private static SurfaceHolder.Callback remoteSurfaceCallback = new ViERendererController.1();
  
  public static SurfaceView CreateLocalRenderView(Context paramContext)
  {
    if (g_localSurface == null) {
      g_localSurface = new SurfaceView(paramContext);
    }
    if (g_localRenderer == null) {
      g_localRenderer = SurfaceHolderWrapper.getWrapper(g_localSurface.getHolder());
    }
    return g_localSurface;
  }
  
  public static SurfaceView CreateRemoteRenderView(Context paramContext)
  {
    if (g_remoteSurface != null) {
      return g_remoteSurface;
    }
    g_remoteSurface = new SurfaceView(paramContext);
    g_remoteSurface.getHolder().addCallback(remoteSurfaceCallback);
    return g_remoteSurface;
  }
  
  public static SurfaceHolder GetLocalRenderer()
  {
    return g_localRenderer;
  }
  
  public static Object GetSurface()
  {
    return g_remoteWindow;
  }
  
  public static void RegisterNativeRenderer(long paramLong)
  {
    Log.d("WBRTCGLN_Java", "got native object " + paramLong);
    g_nativeObject = paramLong;
  }
  
  public static void UnregisterNativeRenderer()
  {
    Log.d("WBRTCGLN_Java", "native object unregistered");
    g_nativeObject = 0L;
  }
  
  public static native void setSurface(Surface paramSurface, long paramLong);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.ViERendererController
 * JD-Core Version:    0.7.0.1
 */