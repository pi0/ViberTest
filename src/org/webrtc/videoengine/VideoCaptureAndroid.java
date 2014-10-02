package org.webrtc.videoengine;

import android.graphics.PixelFormat;
import android.hardware.Camera;
import android.hardware.Camera.ErrorCallback;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.phone.VideoCallActivity;
import com.viber.voip.util.u;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

public class VideoCaptureAndroid
  implements Camera.ErrorCallback, Camera.PreviewCallback, SurfaceHolder.Callback, ViERenderer.ViERendererCallback
{
  private static final boolean FORCE_USE_LIVE_CAMERA_PREVIEW = true;
  private static final long PROBLEMATIC_CAMERA_NOTIFICATION_DELAY = 5000L;
  private static final String TAG;
  public static final boolean USE_LIVE_CAMERA_PREVIEW = false;
  private static final boolean USE_OWN_CAPTURE_BUFFERS = true;
  private int PIXEL_FORMAT = 17;
  volatile Camera camera;
  private ReentrantLock captureLock = new ReentrantLock();
  long context = 0L;
  private VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice currentDevice = null;
  private String deviceUniqueName = null;
  private int expectedFrameSize = 0;
  private SurfaceHolder fakeDisplay = new VideoCaptureAndroid.1(this);
  private int id = 0;
  private AtomicBoolean isCaptureRunning = new AtomicBoolean(false);
  private volatile boolean isCaptureStarted = false;
  private volatile boolean isSurfaceReady = false;
  private SurfaceHolder localPreview = null;
  private int mCaptureFPS = -1;
  private int mCaptureHeight = -1;
  private int mCaptureWidth = -1;
  private final int numCaptureBuffers = 3;
  private int orientation = 0;
  private boolean ownsBuffers = false;
  PixelFormat pixelFormat = new PixelFormat();
  public ReentrantLock previewBufferLock = new ReentrantLock();
  private Runnable problematicCameraCallback = new VideoCaptureAndroid.2(this);
  private Set<VideoCaptureAndroid.CaptureEventCallback> subscribers = new HashSet();
  private SurfaceHolder surfaceHolder = null;
  
  static
  {
    int i = 1;
    TAG = VideoCaptureAndroid.class.getSimpleName();
    int j;
    int k;
    if (("grouper".equals(Build.DEVICE)) && ("Nexus 7".equals(Build.MODEL)))
    {
      j = i;
      k = j | 0x1;
      if ((!"endeavoru".equals(Build.DEVICE)) || (!"HTC One X".equals(Build.MODEL))) {
        break label72;
      }
    }
    for (;;)
    {
      USE_LIVE_CAMERA_PREVIEW = k | i;
      return;
      j = 0;
      break;
      label72:
      i = 0;
    }
  }
  
  protected VideoCaptureAndroid(int paramInt, long paramLong, Camera paramCamera, VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice paramAndroidVideoCaptureDevice, String paramString)
  {
    this.id = paramInt;
    this.context = paramLong;
    this.camera = paramCamera;
    this.currentDevice = paramAndroidVideoCaptureDevice;
    this.deviceUniqueName = paramString;
    try
    {
      this.camera.setPreviewDisplay(null);
      this.camera.setPreviewCallback(null);
      this.camera.setPreviewCallbackWithBuffer(null);
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public static void DeleteVideoCaptureAndroid(VideoCaptureAndroid paramVideoCaptureAndroid)
  {
    log("DeleteVideoCaptureAndroid");
    VideoCaptureDeviceInfoAndroid.DeleteCamera(paramVideoCaptureAndroid);
  }
  
  private static void log(String paramString) {}
  
  private void notifyStartEventCallback()
  {
    synchronized (this.subscribers)
    {
      HashSet localHashSet = new HashSet(this.subscribers);
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((VideoCaptureAndroid.CaptureEventCallback)localIterator.next()).onStartCapture(this);
      }
    }
  }
  
  private void notifyStopEventCallback()
  {
    synchronized (this.subscribers)
    {
      HashSet localHashSet = new HashSet(this.subscribers);
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((VideoCaptureAndroid.CaptureEventCallback)localIterator.next()).onStopCapture(this);
      }
    }
  }
  
  private int tryStartCapture(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.camera == null)
    {
      log("Camera not initialized " + this.id);
      return -1;
    }
    if ((this.isCaptureRunning.get()) || (!this.isCaptureStarted))
    {
      log("tryStartCapture: double start guard, isCaptureRunning=" + this.isCaptureRunning + ", isCaptureStarted=" + this.isCaptureStarted);
      return 0;
    }
    if (!this.isSurfaceReady)
    {
      log("tryStartCapture: waiting for surface...");
      return 0;
    }
    log("tryStartCapture " + paramInt1 + " height " + paramInt2 + " frame rate " + paramInt3 + " isCaptureRunning=" + this.isCaptureRunning + " isSurfaceReady=" + this.isSurfaceReady + " isCaptureStarted=" + this.isCaptureStarted);
    int k;
    label782:
    for (;;)
    {
      int n;
      int m;
      int i1;
      try
      {
        CaptureCapabilityAndroid localCaptureCapabilityAndroid = new CaptureCapabilityAndroid();
        localCaptureCapabilityAndroid.width = paramInt1;
        localCaptureCapabilityAndroid.height = paramInt2;
        localCaptureCapabilityAndroid.maxFPS = paramInt3;
        PixelFormat.getPixelFormatInfo(this.PIXEL_FORMAT, this.pixelFormat);
        int i = paramInt2;
        int j = paramInt1;
        if ((640 == j) && (480 == i)) {
          break label782;
        }
        k = 1;
        try
        {
          Camera.Parameters localParameters = this.camera.getParameters();
          localParameters.setPreviewSize(localCaptureCapabilityAndroid.width, localCaptureCapabilityAndroid.height);
          localParameters.setPreviewFormat(this.PIXEL_FORMAT);
          localParameters.setPreviewFrameRate(localCaptureCapabilityAndroid.maxFPS);
          if (Build.VERSION.SDK_INT >= 14) {
            localParameters.setRecordingHint(true);
          }
          localParameters.setPictureSize(j, i);
          localParameters.set("video-size", "" + j + "x" + i);
          if ((Build.VERSION.SDK_INT >= 15) && (localParameters.isVideoStabilizationSupported())) {
            localParameters.setVideoStabilization(true);
          }
          List localList = localParameters.getSupportedFocusModes();
          if ((localList != null) && (localList.size() > 0) && (u.a(localList, "continuous-video"))) {
            localParameters.setFocusMode("continuous-video");
          }
          this.camera.setParameters(localParameters);
          n = i;
          m = j;
          this.camera.setErrorCallback(this);
          i1 = m * n * this.pixelFormat.bitsPerPixel >> 3;
          int i2 = 0;
          if (i2 < 3)
          {
            byte[] arrayOfByte = new byte[i1];
            this.camera.addCallbackBuffer(arrayOfByte);
            i2++;
            continue;
          }
        }
        catch (RuntimeException localRuntimeException)
        {
          localRuntimeException.printStackTrace();
          log("got exception while trying to launch camera on " + j + "x" + i + ", trying VGA fallback");
          if (k != 0)
          {
            m = 640;
            n = 480;
            if (k == 0) {
              continue;
            }
            j = m;
            i = n;
            continue;
          }
          throw localRuntimeException;
        }
        this.camera.setPreviewCallbackWithBuffer(this);
      }
      catch (Exception localException)
      {
        log("Failed to start camera");
        localException.printStackTrace();
        return -1;
      }
      this.ownsBuffers = true;
      if (USE_LIVE_CAMERA_PREVIEW)
      {
        if (!(ViERenderer.getLocalRenderView() instanceof ViEDirectInputSurface)) {
          break label756;
        }
        this.camera.setPreviewTexture(((ViEDirectInputSurface)ViERenderer.getLocalRenderView()).getSurfaceTexture());
      }
      for (;;)
      {
        SetPreviewRotation(this.currentDevice.orientation);
        int i3 = getDeviceOrientationFromRotation(VideoCallActivity.b());
        ViberApplication.getInstance().getPhoneController(false).setDeviceOrientation(i3, m, n);
        this.currentDevice.device_aspect_ratio = (1.0D * m / n);
        log("overridding actual aspect ratio to " + this.currentDevice.device_aspect_ratio);
        this.camera.startPreview();
        try
        {
          this.previewBufferLock.lock();
          this.expectedFrameSize = i1;
          this.isCaptureRunning.set(true);
          this.previewBufferLock.unlock();
          return 0;
        }
        finally
        {
          label756:
          this.previewBufferLock.unlock();
        }
        this.camera.setPreviewDisplay(this.surfaceHolder);
      }
    }
  }
  
  native void ProvideCameraFrame(byte[] paramArrayOfByte, int paramInt, long paramLong);
  
  public void SetPreviewRotation(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder().append("SetPreviewRotation:").append(paramInt).append("; camera type: ");
    if (this.currentDevice.frontCameraType == VideoCaptureDeviceInfoAndroid.FrontFacingCameraType.Android23) {}
    for (String str = "FRONT";; str = "BACK")
    {
      log(str);
      if (this.camera != null) {
        break;
      }
      return;
    }
    try
    {
      this.previewBufferLock.lock();
      if (this.currentDevice.frontCameraType == VideoCaptureDeviceInfoAndroid.FrontFacingCameraType.Android23) {
        paramInt = (360 - paramInt) % 360;
      }
      this.camera.setDisplayOrientation(paramInt);
      return;
    }
    finally
    {
      this.previewBufferLock.unlock();
    }
  }
  
  public int StartCapture(int paramInt1, int paramInt2, int paramInt3)
  {
    log("StartCapture width " + paramInt1 + " height " + paramInt2 + " frame rate " + paramInt3);
    this.localPreview = ViERenderer.GetLocalRenderer();
    ViERenderer.addRenderEventSubscriber(this);
    try
    {
      this.captureLock.lock();
      this.isCaptureStarted = true;
      this.mCaptureWidth = paramInt1;
      this.mCaptureHeight = paramInt2;
      this.mCaptureFPS = paramInt3;
      if (this.localPreview != null) {
        this.localPreview.addCallback(this);
      }
      int i = tryStartCapture(this.mCaptureWidth, this.mCaptureHeight, this.mCaptureFPS);
      return i;
    }
    finally
    {
      this.captureLock.unlock();
    }
  }
  
  public int StopCapture()
  {
    log("StopCapture");
    try
    {
      this.previewBufferLock.lock();
      boolean bool = this.isCaptureRunning.get();
      if (!bool) {
        return 0;
      }
      log("stopping preview callback");
      this.camera.setPreviewCallback(null);
      this.camera.setPreviewCallbackWithBuffer(null);
      ViERenderer.removeRenderEventSubscriber(this);
      this.localPreview.removeCallback(this);
      this.localPreview = null;
      log("stopping camera");
      dc.a(dk.a).postDelayed(this.problematicCameraCallback, 5000L);
      log("problematic camera notification sent to ui thread");
      this.camera.stopPreview();
      log("preview stopped");
      dc.a(dk.a).removeCallbacks(this.problematicCameraCallback);
      log("camera service released");
      this.isCaptureRunning.set(false);
      notifyStopEventCallback();
      this.previewBufferLock.unlock();
      log("StopCapture finished");
      this.isCaptureStarted = false;
      return 0;
    }
    catch (Exception localException)
    {
      log("Failed to stop camera");
      return -1;
    }
    finally
    {
      this.previewBufferLock.unlock();
      log("StopCapture finished");
    }
  }
  
  public void addEventCallback(VideoCaptureAndroid.CaptureEventCallback paramCaptureEventCallback)
  {
    synchronized (this.subscribers)
    {
      this.subscribers.add(paramCaptureEventCallback);
      return;
    }
  }
  
  public VideoCaptureDeviceInfoAndroid.FrontFacingCameraType getCaptureCameraFacing()
  {
    return this.currentDevice.frontCameraType;
  }
  
  public double getDeviceAspectRatio()
  {
    return this.currentDevice.device_aspect_ratio;
  }
  
  public final int getDeviceOrientationFromRotation(int paramInt)
  {
    if ((this.currentDevice.frontCameraType != VideoCaptureDeviceInfoAndroid.FrontFacingCameraType.Android23) && ((paramInt == 0) || (paramInt == 180))) {
      paramInt = (paramInt + 180) % 360;
    }
    return (paramInt + this.currentDevice.device_rotation_hint) % 360;
  }
  
  public int getDeviceRotationHint()
  {
    return this.currentDevice.device_rotation_hint;
  }
  
  public Object getDeviceUniqueName()
  {
    return this.deviceUniqueName;
  }
  
  public void onError(int paramInt, Camera paramCamera)
  {
    log("VideoCaptureAndroid: camera returned error code " + paramInt);
  }
  
  public void onLocalSurfaceChanged()
  {
    log("VideoCaptureAndroid::onLocalSurfaceChanged - restarting on new surface");
    int i = this.mCaptureWidth;
    int j = this.mCaptureHeight;
    int k = this.mCaptureFPS;
    StopCapture();
    StartCapture(i, j, k);
  }
  
  public void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    if (paramArrayOfByte == null)
    {
      log("got null data - stopping capture");
      StopCapture();
      return;
    }
    try
    {
      if (this.ownsBuffers) {
        paramCamera.addCallbackBuffer(paramArrayOfByte);
      }
      this.previewBufferLock.lock();
      if ((this.isCaptureRunning.get()) && (paramArrayOfByte.length == this.expectedFrameSize)) {
        ProvideCameraFrame(paramArrayOfByte, this.expectedFrameSize, this.context);
      }
      return;
    }
    finally
    {
      this.previewBufferLock.unlock();
    }
  }
  
  public void onRenderGone()
  {
    log("VideoCaptureAndroid::onRenderGone - stopping capturer");
    StopCapture();
  }
  
  public void removeEventCallback(VideoCaptureAndroid.CaptureEventCallback paramCaptureEventCallback)
  {
    synchronized (this.subscribers)
    {
      this.subscribers.remove(paramCaptureEventCallback);
      return;
    }
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    log("VideoCaptureAndroid::surfaceChanged");
    try
    {
      this.captureLock.lock();
      this.isSurfaceReady = true;
      this.surfaceHolder = paramSurfaceHolder;
      tryStartCapture(this.mCaptureWidth, this.mCaptureHeight, this.mCaptureFPS);
      return;
    }
    finally
    {
      this.captureLock.unlock();
    }
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    log("VideoCaptureAndroid::surfaceCreated");
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    log("VideoCaptureAndroid::surfaceDestroyed");
    this.isSurfaceReady = false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.VideoCaptureAndroid
 * JD-Core Version:    0.7.0.1
 */