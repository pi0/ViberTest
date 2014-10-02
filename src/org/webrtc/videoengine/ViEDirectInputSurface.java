package org.webrtc.videoengine;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceView;
import com.viber.voip.ViberApplication;

public class ViEDirectInputSurface
  extends SurfaceView
{
  private static final String TAG = ViEDirectInputSurface.class.getSimpleName();
  private ViEDirectInputSurface.CodecInputSurface mInputSurface = null;
  private ViEDirectInputSurface.SurfaceTextureManager mStManager = null;
  private Surface mSurface = null;
  
  protected ViEDirectInputSurface()
  {
    this(ViberApplication.getInstance());
  }
  
  public ViEDirectInputSurface(Context paramContext)
  {
    super(paramContext);
  }
  
  protected ViEDirectInputSurface(Surface paramSurface)
  {
    this(ViberApplication.getInstance());
    reset(paramSurface);
  }
  
  private static final void log(String paramString)
  {
    ViberApplication.log(3, TAG, paramString);
  }
  
  public final SurfaceTexture getSurfaceTexture()
  {
    if (this.mStManager != null) {
      return this.mStManager.getSurfaceTexture();
    }
    return null;
  }
  
  public final void refresh(long paramLong)
  {
    try
    {
      this.mInputSurface.makeCurrent();
      this.mStManager.awaitNewImage();
      this.mStManager.drawImage();
      this.mInputSurface.setPresentationTime(this.mStManager.getSurfaceTexture().getTimestamp());
      this.mInputSurface.swapBuffers();
      this.mInputSurface.freeCurrent();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public final void release()
  {
    if (this.mStManager != null) {
      this.mStManager.release();
    }
    if (this.mInputSurface != null) {
      this.mInputSurface.release();
    }
    this.mStManager = null;
    this.mInputSurface = null;
    this.mSurface = null;
  }
  
  protected void reset(Surface paramSurface)
  {
    this.mSurface = paramSurface;
    this.mInputSurface = new ViEDirectInputSurface.CodecInputSurface(this.mSurface);
    this.mInputSurface.makeCurrent();
    this.mStManager = new ViEDirectInputSurface.SurfaceTextureManager(null);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.ViEDirectInputSurface
 * JD-Core Version:    0.7.0.1
 */