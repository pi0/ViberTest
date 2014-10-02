package org.webrtc.videoengine;

import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.opengles.GL10;

class ViEAndroidGLES1x$1
  implements ViEAndroidGLES1x.Ctl
{
  ViEAndroidGLES1x$1(ViEAndroidGLES1x paramViEAndroidGLES1x) {}
  
  public void onGotCaps(GL10 paramGL10, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4) {}
  
  public void onPrepare() {}
  
  public void onRenderFrame(GL10 paramGL10)
  {
    this.this$0.onDrawFrame(paramGL10);
  }
  
  public void onSurfaceSizeChange(GL10 paramGL10, int paramInt1, int paramInt2)
  {
    ViEAndroidGLES1x.access$102(this.this$0, true);
    ViEAndroidGLES1x.access$202(this.this$0, paramInt1);
    ViEAndroidGLES1x.access$302(this.this$0, paramInt2);
    ViEAndroidGLES1x.access$400(this.this$0).lock();
    if ((ViEAndroidGLES1x.access$500(this.this$0)) && (ViEAndroidGLES1x.access$700(this.this$0, ViEAndroidGLES1x.access$600(this.this$0), paramInt1, paramInt2) == 0)) {
      ViEAndroidGLES1x.access$802(this.this$0, true);
    }
    ViEAndroidGLES1x.access$400(this.this$0).unlock();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.ViEAndroidGLES1x.1
 * JD-Core Version:    0.7.0.1
 */