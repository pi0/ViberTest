package org.webrtc.videoengine;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public class VideoCaptureDeviceInfoAndroid
{
  private static final String TAG = VideoCaptureDeviceInfoAndroid.class.getSimpleName();
  private static VideoCaptureAndroid captureObj = null;
  static AtomicReference<List<VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice>> deviceList = new AtomicReference();
  private static Set<VideoCaptureDeviceInfoAndroid.VideoCaptureEventListener> subscribers = new HashSet();
  Context context;
  String currentDeviceUniqueId;
  int id;
  
  private VideoCaptureDeviceInfoAndroid(int paramInt, Context paramContext)
  {
    this.id = paramInt;
    this.context = paramContext;
    deviceList.compareAndSet(null, new ArrayList());
  }
  
  private void AddDeviceInfo(VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice paramAndroidVideoCaptureDevice, Camera.Parameters paramParameters)
  {
    int i = 0;
    List localList1 = paramParameters.getSupportedPreviewSizes();
    List localList2 = paramParameters.getSupportedPreviewFpsRange();
    int k;
    if (localList2 != null)
    {
      Iterator localIterator = localList2.iterator();
      int[] arrayOfInt;
      for (k = 0; localIterator.hasNext(); k = Math.min(30, Math.max(arrayOfInt[0], arrayOfInt[1]) / 1000)) {
        arrayOfInt = (int[])localIterator.next();
      }
    }
    for (int j = k;; j = 0)
    {
      paramAndroidVideoCaptureDevice.captureCapabilies = new CaptureCapabilityAndroid[localList1.size()];
      while (i < localList1.size())
      {
        Camera.Size localSize = (Camera.Size)localList1.get(i);
        paramAndroidVideoCaptureDevice.captureCapabilies[i] = new CaptureCapabilityAndroid();
        paramAndroidVideoCaptureDevice.captureCapabilies[i].height = localSize.height;
        paramAndroidVideoCaptureDevice.captureCapabilies[i].width = localSize.width;
        paramAndroidVideoCaptureDevice.captureCapabilies[i].maxFPS = j;
        log("VideoCaptureDeviceInfo maxFPS:" + j + " width:" + localSize.width + " height:" + localSize.height);
        i++;
      }
      return;
    }
  }
  
  private void AddDeviceSpecificCapability(CaptureCapabilityAndroid paramCaptureCapabilityAndroid)
  {
    for (;;)
    {
      VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice localAndroidVideoCaptureDevice;
      int j;
      CaptureCapabilityAndroid[] arrayOfCaptureCapabilityAndroid2;
      synchronized (deviceList)
      {
        ArrayList localArrayList = new ArrayList((Collection)deviceList.get());
        Iterator localIterator = localArrayList.iterator();
        if (!localIterator.hasNext()) {
          break label192;
        }
        localAndroidVideoCaptureDevice = (VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice)localIterator.next();
        CaptureCapabilityAndroid[] arrayOfCaptureCapabilityAndroid1 = localAndroidVideoCaptureDevice.captureCapabilies;
        int i = arrayOfCaptureCapabilityAndroid1.length;
        j = 0;
        if (j >= i) {
          break label193;
        }
        CaptureCapabilityAndroid localCaptureCapabilityAndroid = arrayOfCaptureCapabilityAndroid1[j];
        if ((localCaptureCapabilityAndroid.width == paramCaptureCapabilityAndroid.width) && (localCaptureCapabilityAndroid.height == paramCaptureCapabilityAndroid.height))
        {
          k = 1;
          if (k != 0) {
            continue;
          }
          arrayOfCaptureCapabilityAndroid2 = new CaptureCapabilityAndroid[1 + localAndroidVideoCaptureDevice.captureCapabilies.length];
          int m = 0;
          if (m >= localAndroidVideoCaptureDevice.captureCapabilies.length) {
            break label177;
          }
          arrayOfCaptureCapabilityAndroid2[(m + 1)] = localAndroidVideoCaptureDevice.captureCapabilies[m];
          m++;
        }
      }
      j++;
      continue;
      label177:
      arrayOfCaptureCapabilityAndroid2[0] = paramCaptureCapabilityAndroid;
      localAndroidVideoCaptureDevice.captureCapabilies = arrayOfCaptureCapabilityAndroid2;
      continue;
      label192:
      return;
      label193:
      int k = 0;
    }
  }
  
  @ViEOMXHelper.Native
  private VideoCaptureAndroid AllocateCamera(int paramInt, long paramLong, String paramString)
  {
    Object localObject2;
    Object localObject3;
    Object localObject5;
    for (;;)
    {
      try
      {
        log("AllocateCamera " + paramString);
        synchronized (deviceList)
        {
          ArrayList localArrayList = new ArrayList((Collection)deviceList.get());
          Iterator localIterator = localArrayList.iterator();
          localObject2 = null;
          localObject3 = null;
          if (!localIterator.hasNext()) {
            break label295;
          }
          localObject5 = (VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice)localIterator.next();
          if (!((VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice)localObject5).deviceUniqueName.equals(paramString)) {
            break;
          }
          switch (VideoCaptureDeviceInfoAndroid.1.$SwitchMap$org$webrtc$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType[localObject5.frontCameraType.ordinal()])
          {
          default: 
            if (Build.VERSION.SDK_INT <= 8) {
              break label240;
            }
            Camera localCamera = Camera.open(((VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice)localObject5).index);
            localObject3 = localCamera;
            localObject2 = localObject5;
          }
        }
        localObject3 = AllocateGalaxySFrontCamera();
      }
      catch (Exception localException)
      {
        log("AllocateCamera Failed to open camera- ex " + localException.getMessage());
        localException.printStackTrace();
        if (captureObj != null) {
          notifyCaptureAllocated(captureObj);
        }
        return captureObj;
      }
      continue;
      localObject3 = AllocateEVOFrontFacingCamera();
      continue;
      label240:
      localObject3 = Camera.open();
    }
    label295:
    do
    {
      for (;;)
      {
        log("AllocateCamera - creating VideoCaptureAndroid");
        try
        {
          captureObj = new VideoCaptureAndroid(paramInt, paramLong, (Camera)localObject3, localObject2, paramString);
          break;
        }
        finally {}
      }
      localObject5 = localObject2;
      break;
    } while (localObject3 != null);
    return null;
  }
  
  private Camera AllocateEVOFrontFacingCamera()
  {
    File localFile1 = new File("/system/framework/com.htc.hardware.twinCamDevice.jar");
    String str1 = "com.htc.hardware.twinCamDevice.FrontFacingCamera";
    boolean bool = localFile1.exists();
    if (!bool)
    {
      localFile1 = new File("/system/framework/com.sprint.hardware.twinCamDevice.jar");
      str1 = "com.sprint.hardware.twinCamDevice.FrontFacingCamera";
      bool = localFile1.exists();
    }
    if (!bool) {
      return null;
    }
    String str2 = "";
    if (this.context != null)
    {
      str2 = this.context.getFilesDir().getAbsolutePath();
      File localFile2 = new File(str2, "dexfiles");
      if ((localFile2.exists()) || (localFile2.mkdirs())) {}
    }
    String str3 = str2 + "/dexfiles";
    return (Camera)new DexClassLoader(localFile1.getAbsolutePath(), str3, null, ClassLoader.getSystemClassLoader()).loadClass(str1).getDeclaredMethod("getFrontFacingCamera", (Class[])null).invoke((Object[])null, (Object[])null);
  }
  
  private Camera AllocateGalaxySFrontCamera()
  {
    Camera localCamera = Camera.open();
    Camera.Parameters localParameters = localCamera.getParameters();
    localParameters.set("camera-id", 2);
    localCamera.setParameters(localParameters);
    return localCamera;
  }
  
  public static VideoCaptureDeviceInfoAndroid CreateVideoCaptureDeviceInfoAndroid(int paramInt, Context paramContext)
  {
    log(String.format(Locale.US, "VideoCaptureDeviceInfoAndroid", new Object[0]));
    VideoCaptureDeviceInfoAndroid localVideoCaptureDeviceInfoAndroid = new VideoCaptureDeviceInfoAndroid(paramInt, paramContext);
    if ((localVideoCaptureDeviceInfoAndroid != null) && (localVideoCaptureDeviceInfoAndroid.Init() == 0)) {
      return localVideoCaptureDeviceInfoAndroid;
    }
    log("Failed to create VideoCaptureDeviceInfoAndroid.");
    return null;
  }
  
  protected static void DeleteCamera(VideoCaptureAndroid paramVideoCaptureAndroid)
  {
    if (paramVideoCaptureAndroid != null) {
      notifyCaptureDeleted(paramVideoCaptureAndroid);
    }
    if (captureObj == paramVideoCaptureAndroid) {}
    try
    {
      captureObj = null;
      paramVideoCaptureAndroid.StopCapture();
      paramVideoCaptureAndroid.camera.release();
      paramVideoCaptureAndroid.camera = null;
      paramVideoCaptureAndroid.context = 0L;
      return;
    }
    finally {}
  }
  
  /* Error */
  private int Init()
  {
    // Byte code:
    //   0: getstatic 36	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:deviceList	Ljava/util/concurrent/atomic/AtomicReference;
    //   3: invokevirtual 151	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   6: ifnull +22 -> 28
    //   9: getstatic 36	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:deviceList	Ljava/util/concurrent/atomic/AtomicReference;
    //   12: invokevirtual 151	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   15: checkcast 69	java/util/List
    //   18: invokeinterface 98 1 0
    //   23: ifle +5 -> 28
    //   26: iconst_0
    //   27: ireturn
    //   28: getstatic 191	android/os/Build$VERSION:SDK_INT	I
    //   31: bipush 8
    //   33: if_icmple +361 -> 394
    //   36: iconst_0
    //   37: istore_2
    //   38: iload_2
    //   39: invokestatic 350	android/hardware/Camera:getNumberOfCameras	()I
    //   42: if_icmpge +476 -> 518
    //   45: new 352	android/hardware/Camera$CameraInfo
    //   48: dup
    //   49: invokespecial 353	android/hardware/Camera$CameraInfo:<init>	()V
    //   52: astore_3
    //   53: iload_2
    //   54: aload_3
    //   55: invokestatic 357	android/hardware/Camera:getCameraInfo	(ILandroid/hardware/Camera$CameraInfo;)V
    //   58: new 102	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice
    //   61: dup
    //   62: aload_0
    //   63: aload_3
    //   64: getfield 360	android/hardware/Camera$CameraInfo:facing	I
    //   67: invokespecial 363	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:<init>	(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;I)V
    //   70: astore 4
    //   72: aload 4
    //   74: iload_2
    //   75: putfield 194	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:index	I
    //   78: aload 4
    //   80: aload_3
    //   81: getfield 366	android/hardware/Camera$CameraInfo:orientation	I
    //   84: putfield 367	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:orientation	I
    //   87: aload_3
    //   88: getfield 360	android/hardware/Camera$CameraInfo:facing	I
    //   91: ifne +163 -> 254
    //   94: aload 4
    //   96: new 126	java/lang/StringBuilder
    //   99: dup
    //   100: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   103: ldc_w 369
    //   106: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: iload_2
    //   110: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   113: ldc_w 371
    //   116: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: aload_3
    //   120: getfield 366	android/hardware/Camera$CameraInfo:orientation	I
    //   123: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   126: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: putfield 166	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:deviceUniqueName	Ljava/lang/String;
    //   132: new 126	java/lang/StringBuilder
    //   135: dup
    //   136: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   139: ldc_w 369
    //   142: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: iload_2
    //   146: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   149: ldc_w 371
    //   152: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: aload_3
    //   156: getfield 366	android/hardware/Camera$CameraInfo:orientation	I
    //   159: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   162: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   165: invokestatic 147	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:log	(Ljava/lang/String;)V
    //   168: iload_2
    //   169: invokestatic 200	android/hardware/Camera:open	(I)Landroid/hardware/Camera;
    //   172: astore 5
    //   174: aload 5
    //   176: invokevirtual 299	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   179: astore 6
    //   181: aload 4
    //   183: dconst_1
    //   184: aload 6
    //   186: invokevirtual 375	android/hardware/Camera$Parameters:getPreviewSize	()Landroid/hardware/Camera$Size;
    //   189: getfield 120	android/hardware/Camera$Size:width	I
    //   192: i2d
    //   193: dmul
    //   194: aload 6
    //   196: invokevirtual 375	android/hardware/Camera$Parameters:getPreviewSize	()Landroid/hardware/Camera$Size;
    //   199: getfield 116	android/hardware/Camera$Size:height	I
    //   202: i2d
    //   203: ddiv
    //   204: putfield 379	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:device_aspect_ratio	D
    //   207: aload_0
    //   208: aload 4
    //   210: aload 6
    //   212: invokespecial 381	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:AddDeviceInfo	(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    //   215: aload 5
    //   217: invokevirtual 344	android/hardware/Camera:release	()V
    //   220: getstatic 36	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:deviceList	Ljava/util/concurrent/atomic/AtomicReference;
    //   223: astore 7
    //   225: aload 7
    //   227: monitorenter
    //   228: getstatic 36	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:deviceList	Ljava/util/concurrent/atomic/AtomicReference;
    //   231: invokevirtual 151	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   234: checkcast 69	java/util/List
    //   237: aload 4
    //   239: invokeinterface 384 2 0
    //   244: pop
    //   245: aload 7
    //   247: monitorexit
    //   248: iinc 2 1
    //   251: goto -213 -> 38
    //   254: aload 4
    //   256: new 126	java/lang/StringBuilder
    //   259: dup
    //   260: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   263: ldc_w 369
    //   266: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: iload_2
    //   270: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   273: ldc_w 386
    //   276: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: aload_3
    //   280: getfield 366	android/hardware/Camera$CameraInfo:orientation	I
    //   283: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   286: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   289: putfield 166	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:deviceUniqueName	Ljava/lang/String;
    //   292: aload 4
    //   294: getstatic 389	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:Android23	Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    //   297: putfield 181	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:frontCameraType	Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    //   300: new 126	java/lang/StringBuilder
    //   303: dup
    //   304: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   307: ldc_w 369
    //   310: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   313: iload_2
    //   314: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   317: ldc_w 386
    //   320: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: aload_3
    //   324: getfield 366	android/hardware/Camera$CameraInfo:orientation	I
    //   327: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   330: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   333: invokestatic 147	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:log	(Ljava/lang/String;)V
    //   336: goto -168 -> 168
    //   339: astore_1
    //   340: new 126	java/lang/StringBuilder
    //   343: dup
    //   344: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   347: ldc_w 391
    //   350: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: aload_1
    //   354: invokevirtual 205	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   357: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   363: invokestatic 147	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:log	(Ljava/lang/String;)V
    //   366: aload_1
    //   367: invokevirtual 208	java/lang/Exception:printStackTrace	()V
    //   370: aload_0
    //   371: getfield 49	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:context	Landroid/content/Context;
    //   374: ldc_w 393
    //   377: iconst_1
    //   378: invokestatic 399	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   381: invokevirtual 402	android/widget/Toast:show	()V
    //   384: iconst_m1
    //   385: ireturn
    //   386: astore 8
    //   388: aload 7
    //   390: monitorexit
    //   391: aload 8
    //   393: athrow
    //   394: invokestatic 221	android/hardware/Camera:open	()Landroid/hardware/Camera;
    //   397: astore 10
    //   399: aload 10
    //   401: ifnull +117 -> 518
    //   404: aload 10
    //   406: invokevirtual 299	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   409: astore 12
    //   411: new 102	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice
    //   414: dup
    //   415: aload_0
    //   416: iconst_0
    //   417: invokespecial 363	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:<init>	(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;I)V
    //   420: astore 13
    //   422: aload 13
    //   424: iconst_0
    //   425: putfield 194	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:index	I
    //   428: aload 13
    //   430: iconst_0
    //   431: putfield 367	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:orientation	I
    //   434: aload 13
    //   436: new 126	java/lang/StringBuilder
    //   439: dup
    //   440: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   443: ldc_w 369
    //   446: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   449: aload 13
    //   451: getfield 194	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:index	I
    //   454: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   457: ldc_w 371
    //   460: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   463: aload 13
    //   465: getfield 367	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:orientation	I
    //   468: invokevirtual 136	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   471: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   474: putfield 166	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice:deviceUniqueName	Ljava/lang/String;
    //   477: aload_0
    //   478: aload 13
    //   480: aload 12
    //   482: invokespecial 381	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:AddDeviceInfo	(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    //   485: getstatic 36	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:deviceList	Ljava/util/concurrent/atomic/AtomicReference;
    //   488: astore 14
    //   490: aload 14
    //   492: monitorenter
    //   493: getstatic 36	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:deviceList	Ljava/util/concurrent/atomic/AtomicReference;
    //   496: invokevirtual 151	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   499: checkcast 69	java/util/List
    //   502: aload 13
    //   504: invokeinterface 384 2 0
    //   509: pop
    //   510: aload 14
    //   512: monitorexit
    //   513: aload 10
    //   515: invokevirtual 344	android/hardware/Camera:release	()V
    //   518: aload_0
    //   519: invokespecial 405	org/webrtc/videoengine/VideoCaptureDeviceInfoAndroid:VerifyCapabilities	()V
    //   522: iconst_0
    //   523: ireturn
    //   524: astore 15
    //   526: aload 14
    //   528: monitorexit
    //   529: aload 15
    //   531: athrow
    //   532: astore 11
    //   534: aload 10
    //   536: invokevirtual 344	android/hardware/Camera:release	()V
    //   539: aload 11
    //   541: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	542	0	this	VideoCaptureDeviceInfoAndroid
    //   339	28	1	localException	Exception
    //   37	277	2	i	int
    //   52	272	3	localCameraInfo	android.hardware.Camera.CameraInfo
    //   70	223	4	localAndroidVideoCaptureDevice1	VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice
    //   172	44	5	localCamera1	Camera
    //   179	32	6	localParameters1	Camera.Parameters
    //   223	166	7	localAtomicReference1	AtomicReference
    //   386	6	8	localObject1	Object
    //   397	138	10	localCamera2	Camera
    //   532	8	11	localObject2	Object
    //   409	72	12	localParameters2	Camera.Parameters
    //   420	83	13	localAndroidVideoCaptureDevice2	VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice
    //   524	6	15	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   28	36	339	java/lang/Exception
    //   38	168	339	java/lang/Exception
    //   168	228	339	java/lang/Exception
    //   254	336	339	java/lang/Exception
    //   391	394	339	java/lang/Exception
    //   394	399	339	java/lang/Exception
    //   513	518	339	java/lang/Exception
    //   534	542	339	java/lang/Exception
    //   228	248	386	finally
    //   388	391	386	finally
    //   493	513	524	finally
    //   526	529	524	finally
    //   404	493	532	finally
    //   529	532	532	finally
  }
  
  private Camera.Parameters SearchOldFrontFacingCameras(VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice paramAndroidVideoCaptureDevice)
  {
    Camera localCamera1 = Camera.open();
    Camera.Parameters localParameters1 = localCamera1.getParameters();
    String str = localParameters1.get("camera-id");
    if ((str != null) && (str.equals("1"))) {
      try
      {
        localParameters1.set("camera-id", 2);
        localCamera1.setParameters(localParameters1);
        Camera.Parameters localParameters3 = localCamera1.getParameters();
        paramAndroidVideoCaptureDevice.frontCameraType = VideoCaptureDeviceInfoAndroid.FrontFacingCameraType.GalaxyS;
        paramAndroidVideoCaptureDevice.orientation = 0;
        localCamera1.release();
        return localParameters3;
      }
      catch (Exception localException)
      {
        log("Init Failed to open front camera camera - ex " + localException.getMessage());
        localException.printStackTrace();
      }
    }
    localCamera1.release();
    boolean bool = new File("/system/framework/com.htc.hardware.twinCamDevice.jar").exists();
    if (!bool) {
      bool = new File("/system/framework/com.sprint.hardware.twinCamDevice.jar").exists();
    }
    if (bool)
    {
      paramAndroidVideoCaptureDevice.frontCameraType = VideoCaptureDeviceInfoAndroid.FrontFacingCameraType.HTCEvo;
      paramAndroidVideoCaptureDevice.orientation = 0;
      Camera localCamera2 = AllocateEVOFrontFacingCamera();
      Camera.Parameters localParameters2 = localCamera2.getParameters();
      localCamera2.release();
      return localParameters2;
    }
    return null;
  }
  
  private void VerifyCapabilities()
  {
    if ((Build.DEVICE.equals("GT-I9000")) || (Build.DEVICE.equals("crespo")))
    {
      CaptureCapabilityAndroid localCaptureCapabilityAndroid1 = new CaptureCapabilityAndroid();
      localCaptureCapabilityAndroid1.width = 352;
      localCaptureCapabilityAndroid1.height = 288;
      localCaptureCapabilityAndroid1.maxFPS = 15;
      AddDeviceSpecificCapability(localCaptureCapabilityAndroid1);
      CaptureCapabilityAndroid localCaptureCapabilityAndroid2 = new CaptureCapabilityAndroid();
      localCaptureCapabilityAndroid2.width = 176;
      localCaptureCapabilityAndroid2.height = 144;
      localCaptureCapabilityAndroid2.maxFPS = 15;
      AddDeviceSpecificCapability(localCaptureCapabilityAndroid2);
      CaptureCapabilityAndroid localCaptureCapabilityAndroid3 = new CaptureCapabilityAndroid();
      localCaptureCapabilityAndroid3.width = 320;
      localCaptureCapabilityAndroid3.height = 240;
      localCaptureCapabilityAndroid3.maxFPS = 15;
      AddDeviceSpecificCapability(localCaptureCapabilityAndroid3);
    }
    if ((Build.MANUFACTURER.equals("motorola")) && (Build.DEVICE.equals("umts_sholes"))) {
      synchronized (deviceList)
      {
        ArrayList localArrayList2 = new ArrayList((Collection)deviceList.get());
        Iterator localIterator2 = localArrayList2.iterator();
        while (localIterator2.hasNext())
        {
          CaptureCapabilityAndroid[] arrayOfCaptureCapabilityAndroid2 = ((VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice)localIterator2.next()).captureCapabilies;
          int k = arrayOfCaptureCapabilityAndroid2.length;
          int m = 0;
          if (m < k)
          {
            arrayOfCaptureCapabilityAndroid2[m].maxFPS = 15;
            m++;
          }
        }
      }
    }
    if (("intel".equals(Build.MANUFACTURER)) && ("noonhill".equals(Build.DEVICE)))
    {
      ArrayList localArrayList1 = new ArrayList();
      Iterator localIterator1 = ((List)deviceList.get()).iterator();
      while (localIterator1.hasNext())
      {
        VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice localAndroidVideoCaptureDevice = (VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice)localIterator1.next();
        for (CaptureCapabilityAndroid localCaptureCapabilityAndroid4 : localAndroidVideoCaptureDevice.captureCapabilies) {
          if ((320 >= localCaptureCapabilityAndroid4.width) || (240 >= localCaptureCapabilityAndroid4.height)) {
            localArrayList1.add(localCaptureCapabilityAndroid4);
          }
        }
        localAndroidVideoCaptureDevice.captureCapabilies = ((CaptureCapabilityAndroid[])localArrayList1.toArray(new CaptureCapabilityAndroid[localArrayList1.size()]));
      }
    }
  }
  
  public static void addEventListener(VideoCaptureDeviceInfoAndroid.VideoCaptureEventListener paramVideoCaptureEventListener)
  {
    synchronized (subscribers)
    {
      subscribers.add(paramVideoCaptureEventListener);
      return;
    }
  }
  
  public static int getCaptureDeviceIndex(VideoCaptureAndroid paramVideoCaptureAndroid, List<VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice> paramList)
  {
    Iterator localIterator = paramList.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice localAndroidVideoCaptureDevice = (VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice)localIterator.next();
      i++;
      if ((localAndroidVideoCaptureDevice.deviceUniqueName != null) && (localAndroidVideoCaptureDevice.deviceUniqueName.equals(paramVideoCaptureAndroid.getDeviceUniqueName()))) {
        return i - 1;
      }
    }
    return -1;
  }
  
  public static VideoCaptureAndroid getCurrentCaptureObject()
  {
    try
    {
      VideoCaptureAndroid localVideoCaptureAndroid = captureObj;
      return localVideoCaptureAndroid;
    }
    finally {}
  }
  
  public static final List<VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice> getDevicesList()
  {
    if (deviceList.get() == null) {
      return null;
    }
    synchronized (deviceList)
    {
      List localList = Collections.unmodifiableList(new ArrayList((Collection)deviceList.get()));
      return localList;
    }
  }
  
  private static void log(String paramString)
  {
    Log.d(TAG, paramString);
  }
  
  private static void notifyCaptureAllocated(VideoCaptureAndroid paramVideoCaptureAndroid)
  {
    synchronized (subscribers)
    {
      Iterator localIterator = subscribers.iterator();
      if (localIterator.hasNext()) {
        ((VideoCaptureDeviceInfoAndroid.VideoCaptureEventListener)localIterator.next()).onCaptureAllocated(paramVideoCaptureAndroid);
      }
    }
  }
  
  private static void notifyCaptureDeleted(VideoCaptureAndroid paramVideoCaptureAndroid)
  {
    synchronized (subscribers)
    {
      Iterator localIterator = subscribers.iterator();
      if (localIterator.hasNext()) {
        ((VideoCaptureDeviceInfoAndroid.VideoCaptureEventListener)localIterator.next()).onCaptureDeleted(paramVideoCaptureAndroid);
      }
    }
  }
  
  public static void removeEventListener(VideoCaptureDeviceInfoAndroid.VideoCaptureEventListener paramVideoCaptureEventListener)
  {
    synchronized (subscribers)
    {
      subscribers.remove(paramVideoCaptureEventListener);
      return;
    }
  }
  
  public CaptureCapabilityAndroid[] GetCapabilityArray(String paramString)
  {
    synchronized (deviceList)
    {
      ArrayList localArrayList = new ArrayList((Collection)deviceList.get());
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice localAndroidVideoCaptureDevice = (VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice)localIterator.next();
        if (localAndroidVideoCaptureDevice.deviceUniqueName.equals(paramString)) {
          return (CaptureCapabilityAndroid[])localAndroidVideoCaptureDevice.captureCapabilies;
        }
      }
    }
    return null;
  }
  
  public String GetDeviceUniqueName(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= NumberOfDevices())) {
      return null;
    }
    synchronized (deviceList)
    {
      String str = ((VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice)((List)deviceList.get()).get(paramInt)).deviceUniqueName;
      return str;
    }
  }
  
  public int GetOrientation(String paramString)
  {
    synchronized (deviceList)
    {
      ArrayList localArrayList = new ArrayList((Collection)deviceList.get());
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice localAndroidVideoCaptureDevice = (VideoCaptureDeviceInfoAndroid.AndroidVideoCaptureDevice)localIterator.next();
        if (localAndroidVideoCaptureDevice.deviceUniqueName.equals(paramString)) {
          return localAndroidVideoCaptureDevice.orientation;
        }
      }
    }
    return -1;
  }
  
  public int NumberOfDevices()
  {
    synchronized (deviceList)
    {
      int i = ((List)deviceList.get()).size();
      return i;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.videoengine.VideoCaptureDeviceInfoAndroid
 * JD-Core Version:    0.7.0.1
 */