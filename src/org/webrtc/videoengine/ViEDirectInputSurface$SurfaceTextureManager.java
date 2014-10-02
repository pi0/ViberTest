package org.webrtc.videoengine;

import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;

class ViEDirectInputSurface$SurfaceTextureManager
  implements SurfaceTexture.OnFrameAvailableListener
{
  private boolean mFrameAvailable;
  private Object mFrameSyncObject = new Object();
  private SurfaceTexture mSurfaceTexture;
  private ViEDirectInputSurface.STextureRender mTextureRender = new ViEDirectInputSurface.STextureRender();
  
  public ViEDirectInputSurface$SurfaceTextureManager(SurfaceTexture paramSurfaceTexture)
  {
    this.mTextureRender.surfaceCreated();
    ViEDirectInputSurface.access$000("textureID=" + this.mTextureRender.getTextureId());
    if (paramSurfaceTexture == null) {}
    for (this.mSurfaceTexture = new SurfaceTexture(this.mTextureRender.getTextureId());; this.mSurfaceTexture = paramSurfaceTexture)
    {
      this.mSurfaceTexture.setOnFrameAvailableListener(this);
      return;
    }
  }
  
  public void awaitNewImage()
  {
    synchronized (this.mFrameSyncObject)
    {
      for (;;)
      {
        boolean bool = this.mFrameAvailable;
        if (!bool) {
          try
          {
            this.mFrameSyncObject.wait(2500L);
            if (!this.mFrameAvailable) {
              throw new RuntimeException("Camera frame wait timed out");
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            throw new RuntimeException(localInterruptedException);
          }
        }
      }
    }
    this.mFrameAvailable = false;
    this.mTextureRender.checkGlError("before updateTexImage");
    this.mSurfaceTexture.updateTexImage();
  }
  
  public void changeFragmentShader(String paramString)
  {
    this.mTextureRender.changeFragmentShader(paramString);
  }
  
  public void drawImage()
  {
    this.mTextureRender.drawFrame(this.mSurfaceTexture);
  }
  
  public SurfaceTexture getSurfaceTexture()
  {
    return this.mSurfaceTexture;
  }
  
  public void onFrameAvailable(SurfaceTexture paramSurfaceTexture)
  {
    ViEDirectInputSurface.access$000("new frame available");
    synchronized (this.mFrameSyncObject)
    {
      if (this.mFrameAvailable) {
        throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
      }
    }
    this.mFrameAvailable = true;
    this.mFrameSyncObject.notifyAll();
  }
  
  public void release()
  {
    this.mTextureRender = null;
    this.mSurfaceTexture = null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.ViEDirectInputSurface.SurfaceTextureManager
 * JD-Core Version:    0.7.0.1
 */