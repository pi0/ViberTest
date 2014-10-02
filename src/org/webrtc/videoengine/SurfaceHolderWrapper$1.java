package org.webrtc.videoengine;

import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

class SurfaceHolderWrapper$1
  implements SurfaceHolder.Callback
{
  SurfaceHolderWrapper$1(SurfaceHolderWrapper paramSurfaceHolderWrapper) {}
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    SurfaceHolderWrapper.access$002(this.this$0, paramInt1);
    SurfaceHolderWrapper.access$102(this.this$0, paramInt2);
    SurfaceHolderWrapper.access$202(this.this$0, paramInt3);
    SurfaceHolderWrapper.access$300(this.this$0).set(2);
    SurfaceHolderWrapper.access$400(this.this$0).set(paramSurfaceHolder);
    this.this$0.broadcastStateChange(SurfaceHolderWrapper.access$300(this.this$0).get());
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    SurfaceHolderWrapper.access$300(this.this$0).set(1);
    SurfaceHolderWrapper.access$400(this.this$0).set(paramSurfaceHolder);
    this.this$0.broadcastStateChange(SurfaceHolderWrapper.access$300(this.this$0).get());
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    SurfaceHolderWrapper.access$300(this.this$0).set(3);
    SurfaceHolderWrapper.access$400(this.this$0).set(paramSurfaceHolder);
    this.this$0.broadcastStateChange(SurfaceHolderWrapper.access$300(this.this$0).get());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.SurfaceHolderWrapper.1
 * JD-Core Version:    0.7.0.1
 */