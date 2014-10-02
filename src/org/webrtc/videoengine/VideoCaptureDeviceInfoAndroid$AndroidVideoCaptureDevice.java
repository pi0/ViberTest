package org.webrtc.videoengine;

import android.os.Build;

public class VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice
{
  public CaptureCapabilityAndroid[] captureCapabilies;
  public String deviceUniqueName;
  public double device_aspect_ratio = 0.0D;
  public int device_rotation_hint = 0;
  public VideoCaptureDeviceInfoAndroid.FrontFacingCameraType frontCameraType = VideoCaptureDeviceInfoAndroid.FrontFacingCameraType.None;
  public int index = 0;
  public int orientation;
  
  VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice(VideoCaptureDeviceInfoAndroid paramVideoCaptureDeviceInfoAndroid, int paramInt)
  {
    if ("LT18i".equalsIgnoreCase(Build.DEVICE)) {
      this.device_rotation_hint = 180;
    }
    if (("jflte".equalsIgnoreCase(Build.DEVICE)) && (paramInt == 1)) {
      this.device_aspect_ratio = 1.6D;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice
 * JD-Core Version:    0.7.0.1
 */