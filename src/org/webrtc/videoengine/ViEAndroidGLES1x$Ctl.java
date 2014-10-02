package org.webrtc.videoengine;

import javax.microedition.khronos.opengles.GL10;

public abstract interface ViEAndroidGLES1x$Ctl
{
  public abstract void onGotCaps(GL10 paramGL10, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4);
  
  public abstract void onPrepare();
  
  public abstract void onRenderFrame(GL10 paramGL10);
  
  public abstract void onSurfaceSizeChange(GL10 paramGL10, int paramInt1, int paramInt2);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.ViEAndroidGLES1x.Ctl
 * JD-Core Version:    0.7.0.1
 */