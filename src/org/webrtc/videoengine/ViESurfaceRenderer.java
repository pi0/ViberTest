package org.webrtc.videoengine;

import android.graphics.Bitmap;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class ViESurfaceRenderer
  implements SurfaceHolder.Callback
{
  public static String TAG = ViESurfaceRenderer.class.getSimpleName();
  static Map<SurfaceView, ViESurfaceRenderer.ViESurfaceRendererInternal> _renderers = Collections.synchronizedMap(new HashMap());
  private ViESurfaceRenderer.ViESurfaceRendererInternal wrappedRenderer = null;
  
  public ViESurfaceRenderer(SurfaceView paramSurfaceView)
  {
    this.wrappedRenderer = getCallback(paramSurfaceView);
  }
  
  private static ViESurfaceRenderer.ViESurfaceRendererInternal getCallback(SurfaceView paramSurfaceView)
  {
    synchronized (_renderers)
    {
      ViESurfaceRenderer.ViESurfaceRendererInternal localViESurfaceRendererInternal = (ViESurfaceRenderer.ViESurfaceRendererInternal)_renderers.get(paramSurfaceView);
      if (localViESurfaceRendererInternal == null)
      {
        Map localMap2 = _renderers;
        localViESurfaceRendererInternal = new ViESurfaceRenderer.ViESurfaceRendererInternal(paramSurfaceView);
        localMap2.put(paramSurfaceView, localViESurfaceRendererInternal);
      }
      return localViESurfaceRendererInternal;
    }
  }
  
  public static SurfaceHolder.Callback getCommonSurfaceRenderer(SurfaceView paramSurfaceView)
  {
    return getCallback(paramSurfaceView);
  }
  
  public Bitmap CreateBitmap(int paramInt1, int paramInt2)
  {
    return this.wrappedRenderer.CreateBitmap(paramInt1, paramInt2);
  }
  
  public ByteBuffer CreateByteBuffer(int paramInt1, int paramInt2)
  {
    return this.wrappedRenderer.CreateByteBuffer(paramInt1, paramInt2);
  }
  
  public void DrawBitmap()
  {
    this.wrappedRenderer.DrawBitmap();
  }
  
  public void DrawByteBuffer()
  {
    this.wrappedRenderer.DrawByteBuffer();
  }
  
  public void SetCoordinates(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.wrappedRenderer.SetCoordinates(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  public void saveBitmapToJPEG(int paramInt1, int paramInt2)
  {
    ViESurfaceRenderer.ViESurfaceRendererInternal.access$000(this.wrappedRenderer, paramInt1, paramInt2);
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    this.wrappedRenderer.surfaceChanged(paramSurfaceHolder, paramInt1, paramInt2, paramInt3);
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    this.wrappedRenderer.surfaceCreated(paramSurfaceHolder);
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.wrappedRenderer.surfaceDestroyed(paramSurfaceHolder);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.ViESurfaceRenderer
 * JD-Core Version:    0.7.0.1
 */