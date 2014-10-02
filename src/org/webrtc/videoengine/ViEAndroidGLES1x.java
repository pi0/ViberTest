package org.webrtc.videoengine;

import android.content.Context;
import android.opengl.GLSurfaceView;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.opengles.GL10;

public class ViEAndroidGLES1x
  extends GLSurfaceView
{
  int[] GL_CAPS_DISABLE = { 2912, 2896, 2884, 3008, 3042, 3058, 3024, 2960, 2929, 2903 };
  private ViEAndroidGLES1x.Ctl ctl = null;
  private ReentrantLock nativeFunctionLock = new ReentrantLock();
  private boolean nativeFunctionsRegisted = false;
  private long nativeObject = 0L;
  private boolean openGLCreated = false;
  private ViEAndroidGLES1x.GLRenderer renderer = new ViEAndroidGLES1x.GLRenderer(this, null);
  private ViEAndroidGLES1x.Ctl selfCtl = new ViEAndroidGLES1x.1(this);
  public AtomicBoolean supportsDrawTexture = new AtomicBoolean(false);
  public AtomicBoolean supportsETC1 = new AtomicBoolean(false);
  public AtomicBoolean supportsVBOs = new AtomicBoolean(false);
  private boolean surfaceCreated = false;
  private int viewHeight = 0;
  private int viewWidth = 0;
  
  public ViEAndroidGLES1x(Context paramContext)
  {
    super(paramContext);
    this.ctl.onPrepare();
    setRenderer(this.renderer);
    requestFocus();
    setDrawingCacheEnabled(false);
    setWillNotCacheDrawing(true);
    setFocusableInTouchMode(true);
    setRenderMode(0);
    setDebugFlags(2);
  }
  
  private native int CreateOpenGLNative(long paramLong, int paramInt1, int paramInt2);
  
  private native void DrawNative(long paramLong);
  
  public static boolean UseOpenGL2(Object paramObject)
  {
    return ViEAndroidGLES1x.class.isInstance(paramObject);
  }
  
  public void DeRegisterNativeObject()
  {
    this.nativeFunctionLock.lock();
    this.nativeFunctionsRegisted = false;
    this.openGLCreated = false;
    this.nativeObject = 0L;
    this.nativeFunctionLock.unlock();
  }
  
  public void ReDraw()
  {
    if (this.surfaceCreated) {
      requestRender();
    }
  }
  
  public void RegisterNativeObject(long paramLong)
  {
    this.nativeFunctionLock.lock();
    this.nativeObject = paramLong;
    this.nativeFunctionsRegisted = true;
    this.nativeFunctionLock.unlock();
  }
  
  public void onDrawFrame(GL10 paramGL10)
  {
    this.nativeFunctionLock.lock();
    if ((!this.nativeFunctionsRegisted) || (!this.surfaceCreated)) {
      this.nativeFunctionLock.unlock();
    }
    do
    {
      return;
      if (this.openGLCreated) {
        break;
      }
    } while (CreateOpenGLNative(this.nativeObject, this.viewWidth, this.viewHeight) != 0);
    this.openGLCreated = true;
    DrawNative(this.nativeObject);
    this.nativeFunctionLock.unlock();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.ViEAndroidGLES1x
 * JD-Core Version:    0.7.0.1
 */