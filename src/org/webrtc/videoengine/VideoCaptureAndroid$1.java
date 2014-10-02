package org.webrtc.videoengine;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;

class VideoCaptureAndroid$1
  implements SurfaceHolder
{
  VideoCaptureAndroid$1(VideoCaptureAndroid paramVideoCaptureAndroid) {}
  
  public void addCallback(SurfaceHolder.Callback paramCallback)
  {
    VideoCaptureAndroid.access$000("fakeDisplay::addCallback");
  }
  
  public Surface getSurface()
  {
    VideoCaptureAndroid.access$000("fakeDisplay::getSurface");
    return VideoCaptureAndroid.access$100(this.this$0).getSurface();
  }
  
  public Rect getSurfaceFrame()
  {
    VideoCaptureAndroid.access$000("fakeDisplay::getSurfaceFrame");
    return null;
  }
  
  public boolean isCreating()
  {
    VideoCaptureAndroid.access$000("fakeDisplay::isCreating");
    return false;
  }
  
  public Canvas lockCanvas()
  {
    VideoCaptureAndroid.access$000("fakeDisplay::lockCanvas");
    return null;
  }
  
  public Canvas lockCanvas(Rect paramRect)
  {
    VideoCaptureAndroid.access$000("fakeDisplay::lockCanvas");
    return null;
  }
  
  public void removeCallback(SurfaceHolder.Callback paramCallback)
  {
    VideoCaptureAndroid.access$000("fakeDisplay::removeCallback");
  }
  
  public void setFixedSize(int paramInt1, int paramInt2)
  {
    VideoCaptureAndroid.access$000("fakeDisplay::setFixedSize");
  }
  
  public void setFormat(int paramInt)
  {
    VideoCaptureAndroid.access$000("fakeDisplay::setFormat");
  }
  
  public void setKeepScreenOn(boolean paramBoolean)
  {
    VideoCaptureAndroid.access$000("fakeDisplay::setKeepScreenOn");
  }
  
  public void setSizeFromLayout()
  {
    VideoCaptureAndroid.access$000("fakeDisplay::setSizeFromLayout");
  }
  
  public void setType(int paramInt)
  {
    VideoCaptureAndroid.access$000("fakeDisplay::setType");
  }
  
  public void unlockCanvasAndPost(Canvas paramCanvas)
  {
    VideoCaptureAndroid.access$000("fakeDisplay::unlockCanvasAndPost");
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.VideoCaptureAndroid.1
 * JD-Core Version:    0.7.0.1
 */