package org.webrtc.videoengine;

import android.opengl.GLSurfaceView.EGLContextFactory;
import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

class ViEAndroidGLES20$ContextFactory
  implements GLSurfaceView.EGLContextFactory
{
  private static int EGL_CONTEXT_CLIENT_VERSION = 12440;
  
  public EGLContext createContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig)
  {
    Log.w(ViEAndroidGLES20.access$100(), "creating OpenGL ES 2.0 context");
    ViEAndroidGLES20.access$200("Before eglCreateContext", paramEGL10);
    int[] arrayOfInt = new int[3];
    arrayOfInt[0] = EGL_CONTEXT_CLIENT_VERSION;
    arrayOfInt[1] = 2;
    arrayOfInt[2] = 12344;
    EGLContext localEGLContext = paramEGL10.eglCreateContext(paramEGLDisplay, paramEGLConfig, EGL10.EGL_NO_CONTEXT, arrayOfInt);
    ViEAndroidGLES20.access$200("After eglCreateContext", paramEGL10);
    return localEGLContext;
  }
  
  public void destroyContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLContext paramEGLContext)
  {
    paramEGL10.eglDestroyContext(paramEGLDisplay, paramEGLContext);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.ViEAndroidGLES20.ContextFactory
 * JD-Core Version:    0.7.0.1
 */