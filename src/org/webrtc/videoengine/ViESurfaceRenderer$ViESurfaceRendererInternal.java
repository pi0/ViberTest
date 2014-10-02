package org.webrtc.videoengine;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

class ViESurfaceRenderer$ViESurfaceRendererInternal
  implements SurfaceHolder.Callback
{
  private Bitmap bitmap = null;
  private ByteBuffer byteBuffer;
  private float dstBottomScale = 1.0F;
  private int dstHeight = 0;
  private float dstLeftScale = 0.0F;
  private Rect dstRect = new Rect();
  private float dstRightScale = 1.0F;
  private float dstTopScale = 0.0F;
  private int dstWidth = 0;
  private Rect srcRect = new Rect();
  private SurfaceHolder surfaceHolder;
  
  public ViESurfaceRenderer$ViESurfaceRendererInternal(SurfaceView paramSurfaceView)
  {
    this.surfaceHolder = paramSurfaceView.getHolder();
    if (this.surfaceHolder == null) {
      return;
    }
    if (VideoCaptureAndroid.USE_LIVE_CAMERA_PREVIEW)
    {
      if (!ViERenderer.GetLocalRenderer().equals(paramSurfaceView.getHolder()))
      {
        SurfaceHolderWrapper localSurfaceHolderWrapper2 = SurfaceHolderWrapper.getWrapper(paramSurfaceView.getHolder());
        this.surfaceHolder = localSurfaceHolderWrapper2;
        localSurfaceHolderWrapper2.addCallback(this);
        return;
      }
      this.surfaceHolder = null;
      return;
    }
    SurfaceHolderWrapper localSurfaceHolderWrapper1 = SurfaceHolderWrapper.getWrapper(paramSurfaceView.getHolder());
    this.surfaceHolder = localSurfaceHolderWrapper1;
    localSurfaceHolderWrapper1.addCallback(this);
  }
  
  private void changeDestRect(int paramInt1, int paramInt2)
  {
    this.dstRect.right = ((int)(this.dstRect.left + this.dstRightScale * paramInt1));
    this.dstRect.bottom = ((int)(this.dstRect.top + this.dstBottomScale * paramInt2));
  }
  
  private static void log(String paramString)
  {
    Log.d(ViESurfaceRenderer.TAG, paramString);
  }
  
  private void saveBitmapToJPEG(int paramInt1, int paramInt2)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    this.bitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
    try
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(System.currentTimeMillis());
      FileOutputStream localFileOutputStream = new FileOutputStream(String.format("/sdcard/render_%d.jpg", arrayOfObject));
      localFileOutputStream.write(localByteArrayOutputStream.toByteArray());
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return;
    }
    catch (IOException localIOException) {}catch (FileNotFoundException localFileNotFoundException) {}
  }
  
  public Bitmap CreateBitmap(int paramInt1, int paramInt2)
  {
    if (this.bitmap == null) {}
    this.bitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.RGB_565);
    this.srcRect.left = 0;
    this.srcRect.top = 0;
    this.srcRect.bottom = paramInt2;
    this.srcRect.right = paramInt1;
    log("CreateBitmap: request for wXh " + paramInt1 + "X" + paramInt2);
    return this.bitmap;
  }
  
  public ByteBuffer CreateByteBuffer(int paramInt1, int paramInt2)
  {
    if (this.bitmap == null) {}
    try
    {
      this.bitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.RGB_565);
      this.byteBuffer = ByteBuffer.allocateDirect(paramInt1 * paramInt2 << 1);
      this.byteBuffer.order(ByteOrder.nativeOrder());
      this.srcRect.left = 0;
      this.srcRect.top = 0;
      this.srcRect.bottom = paramInt2;
      this.srcRect.right = paramInt1;
      log("CreateByteBuffer: request for wXh " + paramInt1 + "X" + paramInt2);
      return this.byteBuffer;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.e("*WEBRTC-JAVASFRENDER*", "Failed to CreateByteBuffer");
        localException.printStackTrace();
        this.bitmap = null;
        this.byteBuffer = null;
      }
    }
  }
  
  public void DrawBitmap()
  {
    if ((this.bitmap == null) || (this.surfaceHolder == null)) {}
    for (;;)
    {
      return;
      try
      {
        Canvas localCanvas = this.surfaceHolder.lockCanvas();
        if (localCanvas != null)
        {
          Matrix localMatrix = localCanvas.getMatrix();
          localMatrix.postRotate(-90.0F, this.dstRect.width() >> 1, this.dstRect.height() >> 1);
          localCanvas.setMatrix(localMatrix);
          localCanvas.drawBitmap(this.bitmap, this.srcRect, this.dstRect, null);
          this.surfaceHolder.unlockCanvasAndPost(localCanvas);
          return;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException) {}
    }
  }
  
  public void DrawByteBuffer()
  {
    if (this.byteBuffer == null) {
      return;
    }
    this.byteBuffer.rewind();
    this.bitmap.copyPixelsFromBuffer(this.byteBuffer);
    DrawBitmap();
  }
  
  public void SetCoordinates(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.dstLeftScale = paramFloat1;
    this.dstTopScale = paramFloat2;
    this.dstRightScale = paramFloat3;
    this.dstBottomScale = paramFloat4;
    log("set coordinates: [" + paramFloat1 + ":" + paramFloat2 + ":" + paramFloat3 + ":" + paramFloat4 + "]");
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    changeDestRect(paramInt2, paramInt3);
    log("surfaceChanged in_width:" + paramInt2 + " in_height:" + paramInt3 + " srcRect.left:" + this.srcRect.left + " srcRect.top:" + this.srcRect.top + " srcRect.right:" + this.srcRect.right + " srcRect.bottom:" + this.srcRect.bottom + " dstRect.left:" + this.dstRect.left + " dstRect.top:" + this.dstRect.top + " dstRect.right:" + this.dstRect.right + " dstRect.bottom:" + this.dstRect.bottom);
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    Canvas localCanvas = paramSurfaceHolder.lockCanvas();
    if (localCanvas != null)
    {
      Rect localRect = paramSurfaceHolder.getSurfaceFrame();
      if (localRect != null)
      {
        changeDestRect(localRect.right - localRect.left, localRect.bottom - localRect.top);
        log("surfaceCreated dst.left:" + localRect.left + " dst.top:" + localRect.top + " dst.right:" + localRect.right + " dst.bottom:" + localRect.bottom + " srcRect.left:" + this.srcRect.left + " srcRect.top:" + this.srcRect.top + " srcRect.right:" + this.srcRect.right + " srcRect.bottom:" + this.srcRect.bottom + " dstRect.left:" + this.dstRect.left + " dstRect.top:" + this.dstRect.top + " dstRect.right:" + this.dstRect.right + " dstRect.bottom:" + this.dstRect.bottom);
      }
      paramSurfaceHolder.unlockCanvasAndPost(localCanvas);
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    log("surfaceDestroyed");
    this.bitmap = null;
    this.byteBuffer = null;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.ViESurfaceRenderer.ViESurfaceRendererInternal
 * JD-Core Version:    0.7.0.1
 */