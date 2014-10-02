package org.webrtc.videoengine;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;

class ViEDirectInputSurface$CodecInputSurface
{
  private static final int EGL_RECORDABLE_ANDROID = 12610;
  private EGLContext mEGLContext = EGL14.EGL_NO_CONTEXT;
  private EGLDisplay mEGLDisplay = EGL14.EGL_NO_DISPLAY;
  private EGLSurface mEGLSurface = EGL14.EGL_NO_SURFACE;
  private Surface mSurface;
  
  public ViEDirectInputSurface$CodecInputSurface(Surface paramSurface)
  {
    if (paramSurface == null) {
      throw new NullPointerException();
    }
    this.mSurface = paramSurface;
    eglSetup();
  }
  
  private void checkEglError(String paramString)
  {
    int i = EGL14.eglGetError();
    if (i != 12288) {
      throw new RuntimeException(paramString + ": EGL error: 0x" + Integer.toHexString(i));
    }
  }
  
  private void eglSetup()
  {
    this.mEGLDisplay = EGL14.eglGetDisplay(0);
    if (this.mEGLDisplay == EGL14.EGL_NO_DISPLAY) {
      throw new RuntimeException("unable to get EGL14 display");
    }
    int[] arrayOfInt1 = new int[2];
    if (!EGL14.eglInitialize(this.mEGLDisplay, arrayOfInt1, 0, arrayOfInt1, 1)) {
      throw new RuntimeException("unable to initialize EGL14");
    }
    int[] arrayOfInt2 = { 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12610, 1, 12344 };
    EGLConfig[] arrayOfEGLConfig = new EGLConfig[1];
    int[] arrayOfInt3 = new int[1];
    EGL14.eglChooseConfig(this.mEGLDisplay, arrayOfInt2, 0, arrayOfEGLConfig, 0, arrayOfEGLConfig.length, arrayOfInt3, 0);
    checkEglError("eglCreateContext RGB888+recordable ES2");
    int[] arrayOfInt4 = { 12440, 2, 12344 };
    this.mEGLContext = EGL14.eglCreateContext(this.mEGLDisplay, arrayOfEGLConfig[0], EGL14.EGL_NO_CONTEXT, arrayOfInt4, 0);
    checkEglError("eglCreateContext");
    int[] arrayOfInt5 = { 12344 };
    this.mEGLSurface = EGL14.eglCreateWindowSurface(this.mEGLDisplay, arrayOfEGLConfig[0], this.mSurface, arrayOfInt5, 0);
    checkEglError("eglCreateWindowSurface");
  }
  
  public void freeCurrent()
  {
    EGL14.eglMakeCurrent(this.mEGLDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
    checkEglError("eglMakeCurrent");
  }
  
  public final Surface getSurface()
  {
    return this.mSurface;
  }
  
  public void makeCurrent()
  {
    EGL14.eglMakeCurrent(this.mEGLDisplay, this.mEGLSurface, this.mEGLSurface, this.mEGLContext);
    checkEglError("eglMakeCurrent");
  }
  
  public void release()
  {
    if (this.mEGLDisplay != EGL14.EGL_NO_DISPLAY)
    {
      EGL14.eglMakeCurrent(this.mEGLDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
      EGL14.eglDestroySurface(this.mEGLDisplay, this.mEGLSurface);
      EGL14.eglDestroyContext(this.mEGLDisplay, this.mEGLContext);
      EGL14.eglReleaseThread();
      EGL14.eglTerminate(this.mEGLDisplay);
    }
    if (this.mSurface != null) {
      this.mSurface.release();
    }
    this.mEGLDisplay = EGL14.EGL_NO_DISPLAY;
    this.mEGLContext = EGL14.EGL_NO_CONTEXT;
    this.mEGLSurface = EGL14.EGL_NO_SURFACE;
    this.mSurface = null;
  }
  
  public void setPresentationTime(long paramLong)
  {
    EGLExt.eglPresentationTimeANDROID(this.mEGLDisplay, this.mEGLSurface, paramLong);
    checkEglError("eglPresentationTimeANDROID");
  }
  
  public boolean swapBuffers()
  {
    boolean bool = EGL14.eglSwapBuffers(this.mEGLDisplay, this.mEGLSurface);
    checkEglError("eglSwapBuffers");
    return bool;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.ViEDirectInputSurface.CodecInputSurface
 * JD-Core Version:    0.7.0.1
 */