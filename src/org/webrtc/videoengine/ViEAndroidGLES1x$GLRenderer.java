package org.webrtc.videoengine;

import android.opengl.GLSurfaceView.Renderer;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

class ViEAndroidGLES1x$GLRenderer
  implements GLSurfaceView.Renderer
{
  private ViEAndroidGLES1x$GLRenderer(ViEAndroidGLES1x paramViEAndroidGLES1x) {}
  
  public void onDrawFrame(GL10 paramGL10)
  {
    ViEAndroidGLES1x.access$900(this.this$0).onRenderFrame(paramGL10);
  }
  
  public void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = this.this$0.GL_CAPS_DISABLE;
    int i = arrayOfInt.length;
    for (int j = 0; j < i; j++) {
      paramGL10.glDisable(arrayOfInt[j]);
    }
    paramGL10.glShadeModel(7424);
    ViEAndroidGLES1x.access$900(this.this$0).onSurfaceSizeChange(paramGL10, paramInt1, paramInt2);
  }
  
  public void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig)
  {
    String str1 = " " + paramGL10.glGetString(7939) + " ";
    String str2 = paramGL10.glGetString(7938);
    boolean bool1 = paramGL10.glGetString(7937).contains("PixelFlinger");
    boolean bool2 = str2.contains(" 1.0");
    this.this$0.supportsDrawTexture.set(str1.contains(" GL_OES_draw_texture "));
    this.this$0.supportsETC1.set(str1.contains(" GL_OES_compressed_ETC1_RGB8_texture "));
    AtomicBoolean localAtomicBoolean = this.this$0.supportsVBOs;
    if ((!bool1) && ((!bool2) || (str1.contains("vertex_buffer_object ")))) {}
    for (boolean bool3 = true;; bool3 = false)
    {
      localAtomicBoolean.set(bool3);
      ViEAndroidGLES1x.access$900(this.this$0).onGotCaps(paramGL10, this.this$0.supportsDrawTexture.get(), this.this$0.supportsETC1.get(), this.this$0.supportsVBOs.get(), bool1);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.ViEAndroidGLES1x.GLRenderer
 * JD-Core Version:    0.7.0.1
 */