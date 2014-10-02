package org.webrtc.videoengine;

import android.content.Context;
import android.os.Handler;
import android.os.Process;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ViERenderer
{
  protected static final String TAG = ViERenderer.class.getSimpleName();
  private static Set<ViERenderer.ViERendererCallback> _subscribers = new HashSet();
  private static SurfaceHolder g_localRenderer = null;
  private static View g_localSurface = null;
  private static SurfaceHolder g_remoteRenderer = null;
  private static SurfaceView g_remoteSurface = null;
  
  public static View CreateLocalRenderView(Context paramContext)
  {
    if (g_localSurface == null) {
      g_localSurface = new SurfaceView(paramContext);
    }
    if ((g_localRenderer == null) && ((g_localSurface instanceof SurfaceView))) {
      g_localRenderer = SurfaceHolderWrapper.getWrapper(((SurfaceView)g_localSurface).getHolder());
    }
    return g_localSurface;
  }
  
  private static View CreateLocalRenderer(Context paramContext)
  {
    return CreateLocalRenderView(paramContext);
  }
  
  public static View CreateRemoteRenderView()
  {
    return CreateRemoteRenderView(ViberApplication.getInstance());
  }
  
  public static View CreateRemoteRenderView(Context paramContext)
  {
    return CreateRemoteRenderView(paramContext, ViEAndroidGLES20.IsSupported(paramContext));
  }
  
  public static View CreateRemoteRenderView(Context paramContext, boolean paramBoolean)
  {
    if (g_remoteSurface != null) {
      return g_remoteSurface;
    }
    g_remoteSurface = new SurfaceView(paramContext);
    Log.d(TAG, "adding callback to holder");
    g_remoteSurface.getHolder().addCallback(new ViERenderer.2());
    return g_remoteSurface;
  }
  
  private static View CreateRenderer(Context paramContext)
  {
    return CreateRemoteRenderView(paramContext);
  }
  
  public static SurfaceHolder GetLocalRenderer()
  {
    return g_localRenderer;
  }
  
  public static void addRenderEventSubscriber(ViERenderer.ViERendererCallback paramViERendererCallback)
  {
    synchronized (_subscribers)
    {
      _subscribers.add(paramViERendererCallback);
      return;
    }
  }
  
  @ViEOMXHelper.Native
  private static void adjustThreadPriority(int paramInt1, int paramInt2)
  {
    if (120 == paramInt2)
    {
      if (paramInt1 == 0) {
        Process.setThreadPriority(-8);
      }
    }
    else {
      return;
    }
    Process.setThreadPriority(-12);
  }
  
  public static View getLocalRenderView()
  {
    return g_localSurface;
  }
  
  protected static void notifyLocalSurfaceChanged()
  {
    synchronized (_subscribers)
    {
      HashSet localHashSet = new HashSet(_subscribers);
      if ((g_localSurface instanceof SurfaceView)) {
        g_localRenderer = SurfaceHolderWrapper.getWrapper(((SurfaceView)g_localSurface).getHolder());
      }
      dc.a(dk.a).post(new ViERenderer.1(localHashSet));
      return;
    }
  }
  
  protected static void notifyRenderGone()
  {
    synchronized (_subscribers)
    {
      HashSet localHashSet = new HashSet(_subscribers);
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((ViERenderer.ViERendererCallback)localIterator.next()).onRenderGone();
      }
    }
  }
  
  public static void notifyRenderPause() {}
  
  public static native void notifyRenderSurfaceAttached(Surface paramSurface);
  
  public static native void notifyRenderSurfaceDetached(Surface paramSurface);
  
  public static void removeRenderEventSubscriber(ViERenderer.ViERendererCallback paramViERendererCallback)
  {
    synchronized (_subscribers)
    {
      _subscribers.remove(paramViERendererCallback);
      return;
    }
  }
  
  private static native void setRenderOrientation(int paramInt, float paramFloat);
  
  public static void setRenderOrientation(ViERenderer.kRenderOrientation paramkRenderOrientation, float paramFloat)
  {
    setRenderOrientation(paramkRenderOrientation.ordinal(), paramFloat);
  }
  
  private static final void setRenderPriority(int paramInt)
  {
    if (-8 < paramInt) {
      paramInt = -8;
    }
    Log.d(TAG, "setRenderPriority: " + paramInt);
    Process.setThreadPriority(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.ViERenderer
 * JD-Core Version:    0.7.0.1
 */