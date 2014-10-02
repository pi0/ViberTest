package com.viber.voip.qrcode;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.view.Display;
import android.view.WindowManager;
import com.viber.dexshared.ZXing.CameraConfigurationUtils;
import com.viber.dexshared.ZXing.Factory;
import com.viber.voip.ViberEnv;
import com.viber.voip.util.gl;

final class d
{
  private final Context a;
  private Point b;
  private Point c;
  private ZXing.CameraConfigurationUtils d = ViberEnv.getZXingFactory().getCameraConfigurationUtils();
  
  d(Context paramContext)
  {
    this.a = paramContext;
  }
  
  Point a()
  {
    return this.c;
  }
  
  void a(int paramInt, Camera paramCamera)
  {
    Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
    Camera.getCameraInfo(paramInt, localCameraInfo);
    int i;
    switch (((WindowManager)this.a.getSystemService("window")).getDefaultDisplay().getRotation())
    {
    default: 
      i = 0;
      if (localCameraInfo.facing != 1) {
        break;
      }
    }
    for (int j = (360 - (i + localCameraInfo.orientation) % 360) % 360;; j = (360 + (localCameraInfo.orientation - i)) % 360)
    {
      paramCamera.setDisplayOrientation(j);
      return;
      i = 0;
      break;
      i = 90;
      break;
      i = 180;
      break;
      i = 270;
      break;
    }
  }
  
  @SuppressLint({"NewApi"})
  void a(Camera paramCamera)
  {
    Camera.Parameters localParameters = paramCamera.getParameters();
    Display localDisplay = ((WindowManager)this.a.getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    if (gl.d()) {
      localDisplay.getSize(localPoint);
    }
    for (;;)
    {
      this.b = localPoint;
      this.c = this.d.findBestPreviewSizeValue(localParameters, this.b);
      return;
      localPoint.set(localDisplay.getWidth(), localDisplay.getHeight());
    }
  }
  
  void a(Camera paramCamera, boolean paramBoolean)
  {
    Camera.Parameters localParameters = paramCamera.getParameters();
    if (localParameters == null) {}
    Camera.Size localSize;
    do
    {
      return;
      if (paramBoolean) {}
      this.d.setFocus(localParameters, true, true, paramBoolean);
      if (!paramBoolean)
      {
        this.d.setBarcodeSceneMode(localParameters);
        if (gl.f()) {
          this.d.setVideoStabilization(localParameters);
        }
        if (gl.e())
        {
          this.d.setFocusArea(localParameters);
          this.d.setMetering(localParameters);
        }
      }
      localParameters.setPreviewSize(this.c.x, this.c.y);
      paramCamera.setParameters(localParameters);
      localSize = paramCamera.getParameters().getPreviewSize();
    } while ((localSize == null) || ((this.c.x == localSize.width) && (this.c.y == localSize.height)));
    this.c.x = localSize.width;
    this.c.y = localSize.height;
  }
  
  Point b()
  {
    return this.b;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.qrcode.d
 * JD-Core Version:    0.7.0.1
 */