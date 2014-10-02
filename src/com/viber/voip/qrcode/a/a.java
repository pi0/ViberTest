package com.viber.voip.qrcode.a;

import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;

public final class a
{
  private static final String a = a.class.getName();
  
  public static Camera a()
  {
    return a(-1);
  }
  
  public static Camera a(int paramInt)
  {
    int i = Camera.getNumberOfCameras();
    if (i == 0) {}
    int j;
    do
    {
      return null;
      if (paramInt >= 0) {}
      for (j = 1;; j = 0)
      {
        if (j == 0) {
          paramInt = b(i);
        }
        if (paramInt >= i) {
          break;
        }
        return Camera.open(paramInt);
      }
    } while (j != 0);
    return Camera.open(0);
  }
  
  public static int b()
  {
    return b(Camera.getNumberOfCameras());
  }
  
  private static int b(int paramInt)
  {
    for (int i = 0;; i++) {
      if (i < paramInt)
      {
        Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i, localCameraInfo);
        if (localCameraInfo.facing != 0) {}
      }
      else
      {
        if (i >= paramInt) {
          break;
        }
        return i;
      }
    }
    if (paramInt > 0) {
      return 0;
    }
    return -1;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.qrcode.a.a
 * JD-Core Version:    0.7.0.1
 */