package com.viber.jni;

import android.content.Intent;
import android.os.Handler;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import com.viber.jni.connection.ConnectionController;
import com.viber.jni.connection.ConnectionDelegate;
import com.viber.jni.connection.ConnectionListener;
import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller;
import com.viber.jni.dialer.DialerController;
import com.viber.jni.lastonline.LastOnlineController;
import com.viber.jni.lastonline.LastOnlineControllerCaller;
import com.viber.jni.ptt.PttController;
import com.viber.jni.ptt.PttControllerDelegate.Downloader;
import com.viber.jni.ptt.PttControllerDelegate.Player;
import com.viber.jni.ptt.PttDownloaderListener;
import com.viber.jni.ptt.PttPlayerListener;
import com.viber.jni.publicgroup.PublicGroupController;
import com.viber.jni.secure.SecureCallsController;
import com.viber.jni.secure.SecureCallsWrapper;
import com.viber.jni.settings.SettingsController;
import com.viber.jni.settings.SettingsControllerCaller;
import com.viber.jni.settings.SettingsControllerDelegate;
import com.viber.jni.settings.SettingsControllerStorage;
import com.viber.jni.settings.SettingsListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.calls.u;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.phone.call.i;
import com.viber.voip.phone.call.k;
import com.viber.voip.pixie.PixieController;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.registration.df;
import com.viber.voip.registration.dg;
import com.viber.voip.settings.l;
import com.viber.voip.util.ft;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class PhoneControllerWrapper
  extends PhoneControllerCaller<PhoneController>
  implements PhoneController
{
  private static final String LOG_TAG = PhoneControllerWrapper.class.getSimpleName();
  private static final int PHONE_STATE_WATCHDOG_CHECK_TIMEOUT_MS = 30000;
  private String initedPushToken = "";
  private ViberApplication mApplication;
  private com.viber.voip.phone.call.a mCallHandler;
  private Set<i> mCallInfoListeners = new HashSet();
  private boolean mConnected = false;
  private PhoneControllerWrapper.ConnectivityMgr mConnectivityMgr = new PhoneControllerWrapper.ConnectivityMgr(this, null);
  private DialerController mDialerController;
  private boolean mInitializationStarted = false;
  private boolean mInitialized = false;
  private Set<PhoneControllerWrapper.InitializedListener> mInitializedListeners = new HashSet();
  private LastOnlineController mLastOnlineController;
  private int mMobileNetworkSubtype;
  private Object mMutexInitialization = new Object();
  private Object mMutexPostInitialization = new Object();
  private boolean mNetworkAvailable;
  private int mNetworkType;
  private PhoneControllerHelper mPhoneController;
  private ConnectionController mPhoneControllerConnection;
  private PhoneControllerListener mPhoneControllerListener = new PhoneControllerListener();
  private PttController mPhoneControllerPtt = null;
  private SettingsController mPhoneControllerSettings;
  private PhoneControllerWrapper.PhoneControllerWrapperDelegate mPhoneControllerWrapperDelegate = new PhoneControllerWrapper.PhoneControllerWrapperDelegate(this, null);
  private com.viber.voip.h.a mPttPlaylist = null;
  private PublicGroupController mPublicGroupController;
  private ft mReachability;
  private boolean mReady = false;
  private Set<PhoneControllerReadyListener> mReadyListener = new HashSet();
  private SecureCallsController mSecureCallsController;
  private PhoneControllerDelegate.ViberConnectionState mServiceState = PhoneControllerDelegate.ViberConnectionState.SERVICE_NOT_CONNECTED;
  private TelephonyManager mTelephonyMgr;
  private Runnable phoneStateListenerWatchdog = new PhoneControllerWrapper.1(this);
  private Handler watchDogHandler = dc.a(dk.h);
  
  public PhoneControllerWrapper(ViberApplication paramViberApplication)
  {
    super(PhoneControllerHelper.getInstance(), PhoneControllerHelper.getInstance());
    addReadyListener(this);
    this.mApplication = paramViberApplication;
    this.mPhoneController = PhoneControllerHelper.getInstance();
    this.mPhoneControllerConnection = PhoneControllerHelper.getInstance();
    this.mPhoneControllerPtt = this.mPhoneController;
    this.mPttPlaylist = new com.viber.voip.h.a(this.mPhoneControllerPtt);
    this.mSecureCallsController = new SecureCallsWrapper(this.mPhoneController);
    this.mPublicGroupController = this.mPhoneController;
    this.mPhoneControllerSettings = buildSettingsController();
    this.mLastOnlineController = new LastOnlineControllerCaller(this.mPhoneController, this.mPhoneControllerListener.getLastOnlineListener());
    this.mTelephonyMgr = ((TelephonyManager)this.mApplication.getSystemService("phone"));
    this.mReachability = ft.a(this.mApplication);
    PttPlayerListener localPttPlayerListener = this.mPhoneControllerListener.getPttPlayerListener();
    PttControllerDelegate.Player[] arrayOfPlayer = new PttControllerDelegate.Player[1];
    arrayOfPlayer[0] = this.mPttPlaylist;
    localPttPlayerListener.registerDelegate(arrayOfPlayer);
    PttDownloaderListener localPttDownloaderListener = this.mPhoneControllerListener.getPttDownloaderListener();
    PttControllerDelegate.Downloader[] arrayOfDownloader = new PttControllerDelegate.Downloader[1];
    arrayOfDownloader[0] = this.mPttPlaylist;
    localPttDownloaderListener.registerDelegate(arrayOfDownloader);
    ConnectionListener localConnectionListener = this.mPhoneControllerListener.getConnectionListener();
    ConnectionDelegate[] arrayOfConnectionDelegate = new ConnectionDelegate[1];
    arrayOfConnectionDelegate[0] = this.mPhoneControllerWrapperDelegate;
    localConnectionListener.registerDelegate(arrayOfConnectionDelegate);
    registerDelegate(this.mPhoneControllerWrapperDelegate);
  }
  
  private SettingsController buildSettingsController()
  {
    SettingsControllerCaller localSettingsControllerCaller = new SettingsControllerCaller(PhoneControllerHelper.getInstance(), this.mPhoneControllerConnection);
    addReadyListener(localSettingsControllerCaller);
    SettingsControllerStorage localSettingsControllerStorage = new SettingsControllerStorage(localSettingsControllerCaller, ViberApplication.preferences());
    this.mPhoneControllerListener.getConnectionListener().registerDelegate(new ConnectionDelegate[] { localSettingsControllerStorage });
    this.mPhoneControllerListener.getSettingsListener().registerDelegate(new SettingsControllerDelegate[] { localSettingsControllerStorage });
    return localSettingsControllerStorage;
  }
  
  private void initPhoneStateListener()
  {
    PhoneControllerWrapper.PhoneStateListenerImpl localPhoneStateListenerImpl = new PhoneControllerWrapper.PhoneStateListenerImpl(this, null);
    try
    {
      Class localClass = this.mTelephonyMgr.getClass();
      Class[] arrayOfClass = new Class[3];
      arrayOfClass[0] = PhoneStateListener.class;
      arrayOfClass[1] = Integer.TYPE;
      arrayOfClass[2] = Integer.TYPE;
      Method localMethod = localClass.getDeclaredMethod("listenGemini", arrayOfClass);
      TelephonyManager localTelephonyManager1 = this.mTelephonyMgr;
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = localPhoneStateListenerImpl;
      arrayOfObject1[1] = Integer.valueOf(32);
      arrayOfObject1[2] = Integer.valueOf(0);
      localMethod.invoke(localTelephonyManager1, arrayOfObject1);
      TelephonyManager localTelephonyManager2 = this.mTelephonyMgr;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = localPhoneStateListenerImpl;
      arrayOfObject2[1] = Integer.valueOf(32);
      arrayOfObject2[2] = Integer.valueOf(1);
      localMethod.invoke(localTelephonyManager2, arrayOfObject2);
      return;
    }
    catch (Exception localException)
    {
      this.mTelephonyMgr.listen(localPhoneStateListenerImpl, 33);
    }
  }
  
  private void initServerSettings()
  {
    if ((ViberApplication.preferences().b("last_online_last_changed_time", 0L) != 0L) || (ViberApplication.preferences().b("settings_viber_in_syncing", 0) > 0))
    {
      boolean bool1 = ViberApplication.preferences().b(com.viber.voip.settings.j.ao(), com.viber.voip.settings.j.ap());
      int i = ViberApplication.preferences().b("settings_viber_in_syncing", 0);
      boolean bool2 = false;
      if (!bool1) {
        bool2 = true;
      }
      handleChangeSettings(i, true, true, bool2);
    }
  }
  
  private void logout(String paramString)
  {
    ViberApplication.log(3, LOG_TAG, paramString);
  }
  
  private void notifyServiceStateChanged(PhoneControllerDelegate.ViberConnectionState paramViberConnectionState)
  {
    if (this.mServiceState != paramViberConnectionState)
    {
      this.mServiceState = paramViberConnectionState;
      this.mPhoneControllerListener.onServiceStateChanged(paramViberConnectionState.ordinal());
    }
  }
  
  /* Error */
  private void postInit()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 98	com/viber/jni/PhoneControllerWrapper:mMutexPostInitialization	Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 134	com/viber/jni/PhoneControllerWrapper:mInitializationStarted	Z
    //   11: ifeq +6 -> 17
    //   14: aload_1
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 134	com/viber/jni/PhoneControllerWrapper:mInitializationStarted	Z
    //   22: aload_1
    //   23: monitorexit
    //   24: aload_0
    //   25: getfield 174	com/viber/jni/PhoneControllerWrapper:mApplication	Lcom/viber/voip/ViberApplication;
    //   28: invokevirtual 413	com/viber/voip/ViberApplication:getHardwareParameters	()Lcom/viber/voip/registration/HardwareParameters;
    //   31: astore_3
    //   32: aload_0
    //   33: getfield 174	com/viber/jni/PhoneControllerWrapper:mApplication	Lcom/viber/voip/ViberApplication;
    //   36: invokevirtual 417	com/viber/voip/ViberApplication:getActivationController	()Lcom/viber/voip/registration/ActivationController;
    //   39: invokevirtual 422	com/viber/voip/registration/ActivationController:getDeviceKey	()Ljava/lang/String;
    //   42: invokestatic 427	com/viber/voip/util/aj:a	(Ljava/lang/String;)[B
    //   45: astore 4
    //   47: aload_3
    //   48: invokeinterface 432 1 0
    //   53: invokestatic 427	com/viber/voip/util/aj:a	(Ljava/lang/String;)[B
    //   56: astore 9
    //   58: aload_0
    //   59: aload_3
    //   60: invokeinterface 435 1 0
    //   65: putfield 161	com/viber/jni/PhoneControllerWrapper:initedPushToken	Ljava/lang/String;
    //   68: aload_0
    //   69: getfield 174	com/viber/jni/PhoneControllerWrapper:mApplication	Lcom/viber/voip/ViberApplication;
    //   72: invokevirtual 438	com/viber/voip/ViberApplication:getAddressBookVersion	()I
    //   75: i2s
    //   76: istore 10
    //   78: aload_0
    //   79: getfield 174	com/viber/jni/PhoneControllerWrapper:mApplication	Lcom/viber/voip/ViberApplication;
    //   82: invokevirtual 417	com/viber/voip/ViberApplication:getActivationController	()Lcom/viber/voip/registration/ActivationController;
    //   85: invokevirtual 441	com/viber/voip/registration/ActivationController:getCountryCodeInt	()I
    //   88: i2s
    //   89: istore 11
    //   91: aload_0
    //   92: getfield 174	com/viber/jni/PhoneControllerWrapper:mApplication	Lcom/viber/voip/ViberApplication;
    //   95: invokevirtual 417	com/viber/voip/ViberApplication:getActivationController	()Lcom/viber/voip/registration/ActivationController;
    //   98: invokevirtual 444	com/viber/voip/registration/ActivationController:getRegNumberCanonized	()Ljava/lang/String;
    //   101: astore 12
    //   103: aload 12
    //   105: invokestatic 450	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   108: ifeq +28 -> 136
    //   111: aload_0
    //   112: getfield 174	com/viber/jni/PhoneControllerWrapper:mApplication	Lcom/viber/voip/ViberApplication;
    //   115: invokevirtual 417	com/viber/voip/ViberApplication:getActivationController	()Lcom/viber/voip/registration/ActivationController;
    //   118: invokevirtual 453	com/viber/voip/registration/ActivationController:getRegNumber	()Ljava/lang/String;
    //   121: astore 22
    //   123: aload_0
    //   124: getfield 176	com/viber/jni/PhoneControllerWrapper:mPhoneController	Lcom/viber/jni/PhoneControllerHelper;
    //   127: iload 11
    //   129: aload 22
    //   131: invokevirtual 457	com/viber/jni/PhoneControllerHelper:canonizePhoneNumberForCountryCode	(ILjava/lang/String;)Ljava/lang/String;
    //   134: astore 12
    //   136: aload_0
    //   137: new 459	java/lang/StringBuilder
    //   140: dup
    //   141: invokespecial 460	java/lang/StringBuilder:<init>	()V
    //   144: ldc_w 462
    //   147: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: aload_3
    //   151: invokeinterface 432 1 0
    //   156: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: ldc_w 468
    //   162: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: aload 9
    //   167: arraylength
    //   168: invokevirtual 471	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   171: ldc_w 473
    //   174: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: iload 10
    //   179: invokevirtual 471	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   182: ldc_w 475
    //   185: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: aload_0
    //   189: getfield 161	com/viber/jni/PhoneControllerWrapper:initedPushToken	Ljava/lang/String;
    //   192: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: ldc_w 477
    //   198: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: iload 11
    //   203: invokevirtual 471	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   206: ldc_w 479
    //   209: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: aload 12
    //   214: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: invokevirtual 482	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   220: invokespecial 281	com/viber/jni/PhoneControllerWrapper:logout	(Ljava/lang/String;)V
    //   223: invokestatic 488	com/viber/voip/ViberEnv:getPixieController	()Lcom/viber/voip/pixie/PixieController;
    //   226: astore 13
    //   228: aload_0
    //   229: ldc_w 490
    //   232: invokespecial 281	com/viber/jni/PhoneControllerWrapper:logout	(Ljava/lang/String;)V
    //   235: new 492	com/viber/jni/PhoneControllerInitializer
    //   238: dup
    //   239: aload 9
    //   241: aload 4
    //   243: aload_0
    //   244: getfield 161	com/viber/jni/PhoneControllerWrapper:initedPushToken	Ljava/lang/String;
    //   247: sipush 4096
    //   250: iload 10
    //   252: iload 11
    //   254: aload 12
    //   256: getstatic 497	com/viber/voip/w:u	Ljava/lang/String;
    //   259: aload_0
    //   260: getfield 110	com/viber/jni/PhoneControllerWrapper:mPhoneControllerListener	Lcom/viber/jni/PhoneControllerListener;
    //   263: iconst_1
    //   264: iconst_1
    //   265: aload 13
    //   267: invokeinterface 502 1 0
    //   272: aload 13
    //   274: invokeinterface 505 1 0
    //   279: invokestatic 510	com/viber/voip/bc:b	()Lcom/viber/voip/bd;
    //   282: getfield 515	com/viber/voip/bd:ab	I
    //   285: invokespecial 518	com/viber/jni/PhoneControllerInitializer:<init>	([B[BLjava/lang/String;ISSLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/PhoneControllerDelegate;ZIIII)V
    //   288: astore 14
    //   290: aload_0
    //   291: getfield 176	com/viber/jni/PhoneControllerWrapper:mPhoneController	Lcom/viber/jni/PhoneControllerHelper;
    //   294: aload 14
    //   296: invokevirtual 522	com/viber/jni/PhoneControllerHelper:Init	(Lcom/viber/jni/PhoneControllerInitializer;)I
    //   299: istore 15
    //   301: aload_0
    //   302: ldc_w 524
    //   305: invokespecial 281	com/viber/jni/PhoneControllerWrapper:logout	(Ljava/lang/String;)V
    //   308: aload_0
    //   309: new 459	java/lang/StringBuilder
    //   312: dup
    //   313: invokespecial 460	java/lang/StringBuilder:<init>	()V
    //   316: ldc_w 526
    //   319: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: iload 15
    //   324: invokevirtual 471	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   327: invokevirtual 482	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   330: invokespecial 281	com/viber/jni/PhoneControllerWrapper:logout	(Ljava/lang/String;)V
    //   333: aload_0
    //   334: new 459	java/lang/StringBuilder
    //   337: dup
    //   338: invokespecial 460	java/lang/StringBuilder:<init>	()V
    //   341: ldc_w 528
    //   344: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokestatic 533	com/viber/jni/LibVersion:getNativeVersionString	()Ljava/lang/String;
    //   350: invokevirtual 466	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: invokevirtual 482	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   356: invokespecial 281	com/viber/jni/PhoneControllerWrapper:logout	(Ljava/lang/String;)V
    //   359: aload_0
    //   360: invokespecial 535	com/viber/jni/PhoneControllerWrapper:initServerSettings	()V
    //   363: aload_0
    //   364: aload_0
    //   365: getfield 174	com/viber/jni/PhoneControllerWrapper:mApplication	Lcom/viber/voip/ViberApplication;
    //   368: invokevirtual 539	com/viber/voip/ViberApplication:getContactManager	()Lcom/viber/voip/contacts/c/d/b;
    //   371: invokeinterface 545 1 0
    //   376: invokeinterface 550 1 0
    //   381: invokevirtual 261	com/viber/jni/PhoneControllerWrapper:registerDelegate	(Lcom/viber/jni/PhoneControllerDelegate;)V
    //   384: aload_0
    //   385: getfield 174	com/viber/jni/PhoneControllerWrapper:mApplication	Lcom/viber/voip/ViberApplication;
    //   388: invokevirtual 539	com/viber/voip/ViberApplication:getContactManager	()Lcom/viber/voip/contacts/c/d/b;
    //   391: invokeinterface 545 1 0
    //   396: astore 16
    //   398: iload 15
    //   400: ifne +184 -> 584
    //   403: iconst_1
    //   404: istore 17
    //   406: aload 16
    //   408: iload 17
    //   410: invokeinterface 553 2 0
    //   415: aload_0
    //   416: invokespecial 555	com/viber/jni/PhoneControllerWrapper:initPhoneStateListener	()V
    //   419: aload_0
    //   420: getfield 228	com/viber/jni/PhoneControllerWrapper:mReachability	Lcom/viber/voip/util/ft;
    //   423: aload_0
    //   424: getfield 105	com/viber/jni/PhoneControllerWrapper:mConnectivityMgr	Lcom/viber/jni/PhoneControllerWrapper$ConnectivityMgr;
    //   427: invokevirtual 558	com/viber/voip/util/ft:a	(Lcom/viber/voip/util/fu;)V
    //   430: aload_0
    //   431: getfield 174	com/viber/jni/PhoneControllerWrapper:mApplication	Lcom/viber/voip/ViberApplication;
    //   434: new 560	android/content/Intent
    //   437: dup
    //   438: ldc_w 562
    //   441: invokespecial 564	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   444: invokevirtual 568	com/viber/voip/ViberApplication:sendBroadcast	(Landroid/content/Intent;)V
    //   447: aload_0
    //   448: getfield 126	com/viber/jni/PhoneControllerWrapper:mInitializedListeners	Ljava/util/Set;
    //   451: astore 18
    //   453: aload 18
    //   455: monitorenter
    //   456: aload_0
    //   457: iconst_1
    //   458: putfield 132	com/viber/jni/PhoneControllerWrapper:mInitialized	Z
    //   461: new 121	java/util/HashSet
    //   464: dup
    //   465: aload_0
    //   466: getfield 126	com/viber/jni/PhoneControllerWrapper:mInitializedListeners	Ljava/util/Set;
    //   469: invokespecial 571	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   472: astore 20
    //   474: aload_0
    //   475: getfield 126	com/viber/jni/PhoneControllerWrapper:mInitializedListeners	Ljava/util/Set;
    //   478: invokeinterface 576 1 0
    //   483: aload 18
    //   485: monitorexit
    //   486: aload 20
    //   488: invokeinterface 580 1 0
    //   493: astore 21
    //   495: aload 21
    //   497: invokeinterface 585 1 0
    //   502: ifeq +96 -> 598
    //   505: aload 21
    //   507: invokeinterface 589 1 0
    //   512: checkcast 591	com/viber/jni/PhoneControllerWrapper$InitializedListener
    //   515: aload_0
    //   516: invokeinterface 595 2 0
    //   521: goto -26 -> 495
    //   524: astore_2
    //   525: aload_1
    //   526: monitorexit
    //   527: aload_2
    //   528: athrow
    //   529: astore 5
    //   531: aload_0
    //   532: invokevirtual 598	com/viber/jni/PhoneControllerWrapper:disconnect	()V
    //   535: aload_0
    //   536: getfield 174	com/viber/jni/PhoneControllerWrapper:mApplication	Lcom/viber/voip/ViberApplication;
    //   539: iconst_0
    //   540: invokevirtual 601	com/viber/voip/ViberApplication:setActivated	(Z)V
    //   543: new 560	android/content/Intent
    //   546: dup
    //   547: ldc_w 603
    //   550: invokespecial 564	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   553: astore 6
    //   555: aload 6
    //   557: ldc_w 605
    //   560: iconst_1
    //   561: invokevirtual 609	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   564: pop
    //   565: aload 6
    //   567: ldc_w 610
    //   570: invokevirtual 614	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   573: pop
    //   574: aload_0
    //   575: getfield 174	com/viber/jni/PhoneControllerWrapper:mApplication	Lcom/viber/voip/ViberApplication;
    //   578: aload 6
    //   580: invokevirtual 617	com/viber/voip/ViberApplication:startActivity	(Landroid/content/Intent;)V
    //   583: return
    //   584: iconst_0
    //   585: istore 17
    //   587: goto -181 -> 406
    //   590: astore 19
    //   592: aload 18
    //   594: monitorexit
    //   595: aload 19
    //   597: athrow
    //   598: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	599	0	this	PhoneControllerWrapper
    //   4	522	1	localObject1	Object
    //   524	4	2	localObject2	Object
    //   31	120	3	localHardwareParameters	HardwareParameters
    //   45	197	4	arrayOfByte1	byte[]
    //   529	1	5	localException	Exception
    //   553	26	6	localIntent	Intent
    //   56	184	9	arrayOfByte2	byte[]
    //   76	175	10	s1	short
    //   89	164	11	s2	short
    //   101	154	12	str1	String
    //   226	47	13	localPixieController	PixieController
    //   288	7	14	localPhoneControllerInitializer	PhoneControllerInitializer
    //   299	100	15	i	int
    //   396	11	16	localp	com.viber.voip.contacts.c.f.b.p
    //   404	182	17	bool	boolean
    //   590	6	19	localObject3	Object
    //   472	15	20	localHashSet	HashSet
    //   493	13	21	localIterator	Iterator
    //   121	9	22	str2	String
    // Exception table:
    //   from	to	target	type
    //   7	16	524	finally
    //   17	24	524	finally
    //   525	527	524	finally
    //   47	58	529	java/lang/Exception
    //   456	486	590	finally
    //   592	595	590	finally
  }
  
  private PhoneControllerDelegate.ViberConnectionState resolveServiceState()
  {
    if (this.mConnected) {
      return PhoneControllerDelegate.ViberConnectionState.SERVICE_CONNECTED;
    }
    if (this.mNetworkAvailable) {
      return PhoneControllerDelegate.ViberConnectionState.SERVICE_NOT_CONNECTED;
    }
    return PhoneControllerDelegate.ViberConnectionState.NO_INTERNET;
  }
  
  private void showGenerateDeviceKeyErrorDialog()
  {
    Intent localIntent = new Intent("com.viber.voip.action.ACTION_GEN_DEV_KEY_FAILED");
    localIntent.setFlags(268435456);
    this.mApplication.startActivity(localIntent);
  }
  
  private void updatePushToken()
  {
    HardwareParameters localHardwareParameters = ViberApplication.getInstance().getHardwareParameters();
    String str1 = localHardwareParameters.getPushToken();
    String str2 = localHardwareParameters.getUdid();
    String str3 = localHardwareParameters.getSystemVersion();
    dg localdg = new dg(bc.b().m);
    try
    {
      df localdf = localdg.a(str1, str2, str3);
      if (localdf != null) {
        logout("updatePushToken() responseState:" + localdf.a);
      }
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public void addCallInfoListener(i parami)
  {
    synchronized (this.mCallInfoListeners)
    {
      if (getCurrentCall() != null) {
        parami.onCallInfoReady(getCurrentCall());
      }
      this.mCallInfoListeners.add(parami);
      return;
    }
  }
  
  public void addInitializedListener(PhoneControllerWrapper.InitializedListener paramInitializedListener)
  {
    synchronized (this.mInitializedListeners)
    {
      if (this.mInitialized)
      {
        i = 1;
        if (i != 0) {
          paramInitializedListener.initialized(this);
        }
        return;
      }
      this.mInitializedListeners.add(paramInitializedListener);
      int i = 0;
    }
  }
  
  public void addLoadedListener(PhoneControllerWrapper.LoadedListener paramLoadedListener)
  {
    addReadyListener(paramLoadedListener);
    addInitializedListener(paramLoadedListener);
  }
  
  public void addReadyListener(PhoneControllerReadyListener paramPhoneControllerReadyListener)
  {
    synchronized (this.mReadyListener)
    {
      if (this.mReady)
      {
        i = 1;
        if (i != 0) {
          paramPhoneControllerReadyListener.ready(this);
        }
        return;
      }
      this.mReadyListener.add(paramPhoneControllerReadyListener);
      int i = 0;
    }
  }
  
  public String canonizePhoneNumber(String paramString)
  {
    ViberApplication.log(3, LOG_TAG, "canonizePhoneNumber: originPhoneNumber=" + paramString);
    return this.mPhoneController.canonizePhoneNumber(paramString);
  }
  
  public String canonizePhoneNumberForCountryCode(int paramInt, String paramString)
  {
    return this.mPhoneController.canonizePhoneNumberForCountryCode(paramInt, paramString);
  }
  
  public int connectivityTest(com.viber.service.a parama)
  {
    return this.mPhoneController.connectivityTest(parama);
  }
  
  public void disconnect()
  {
    logout("#disconnect#");
    this.mConnected = false;
    this.mPhoneController.disconnect();
  }
  
  public int done()
  {
    return this.mPhoneController.done();
  }
  
  public void dropPhoneStateWatchdog(Runnable paramRunnable, boolean paramBoolean)
  {
    this.watchDogHandler.removeCallbacks(paramRunnable);
    if (!paramBoolean) {
      return;
    }
    logout("watchdog is notifying state machine that GSM call is ended/CALL_STATE_IDLE");
    handleGSMStateChange(0);
  }
  
  public String encodeCurrency(String paramString1, String paramString2)
  {
    return this.mPhoneController.encodeCurrency(paramString1, paramString2);
  }
  
  public int generateSequence()
  {
    return this.mPhoneController.generateSequence();
  }
  
  public com.viber.voip.phone.call.a getCallHandler()
  {
    if (this.mCallHandler == null) {
      this.mCallHandler = new com.viber.voip.phone.call.a(this.mApplication, this.mPhoneController, this.mPhoneControllerListener);
    }
    return this.mCallHandler;
  }
  
  public ConnectionController getConnectionController()
  {
    return this.mPhoneControllerConnection;
  }
  
  public int getCountryCode(String paramString)
  {
    return this.mPhoneController.getCountryCode(paramString);
  }
  
  public CountryNameInfo getCountryName(String paramString)
  {
    return this.mPhoneController.getCountryName(paramString);
  }
  
  public k getCurrentCall()
  {
    if (this.mCallHandler != null) {
      return this.mCallHandler.b();
    }
    return null;
  }
  
  public PhoneControllerListener getDelegatesManager()
  {
    return this.mPhoneControllerListener;
  }
  
  public DialerController getDialerController()
  {
    if (this.mDialerController == null) {
      this.mDialerController = new com.viber.voip.phone.call.j(this.mPhoneController, getCallHandler());
    }
    return this.mDialerController;
  }
  
  public DialerController getDialerControllerNowrap()
  {
    return this.mPhoneController;
  }
  
  public LastOnlineController getLastOnlineController()
  {
    return this.mLastOnlineController;
  }
  
  public long getMyCID()
  {
    return this.mPhoneController.getMyCID();
  }
  
  public long getMyVersion()
  {
    return this.mPhoneController.getMyVersion();
  }
  
  public long getPhoneType()
  {
    return this.mPhoneController.getPhoneType();
  }
  
  public PttController getPttController()
  {
    return this.mPhoneControllerPtt;
  }
  
  public com.viber.voip.h.a getPttPlaylist()
  {
    return this.mPttPlaylist;
  }
  
  public PublicGroupController getPublicGroupController()
  {
    return this.mPublicGroupController;
  }
  
  public SecureCallsController getSecureCallsController()
  {
    return this.mSecureCallsController;
  }
  
  public long getServerDeltaTime()
  {
    return PhoneControllerWrapper.PhoneControllerWrapperDelegate.access$1600(this.mPhoneControllerWrapperDelegate);
  }
  
  public PhoneControllerDelegate.ViberConnectionState getServiceState()
  {
    return this.mServiceState;
  }
  
  public SettingsController getSettingsController()
  {
    return this.mPhoneControllerSettings;
  }
  
  public void handleAppModeChanged(int paramInt)
  {
    this.mPhoneController.handleAppModeChanged(paramInt);
  }
  
  public boolean handleAuthenticateApp(int paramInt1, String paramString, int paramInt2, int paramInt3)
  {
    return this.mPhoneController.handleAuthenticateApp(paramInt1, paramString, paramInt2, paramInt3);
  }
  
  public void handleBlockApp(int paramInt1, int paramInt2)
  {
    this.mPhoneController.handleBlockApp(paramInt1, paramInt2);
  }
  
  public void handleBlockList(String[] paramArrayOfString, int paramInt, boolean paramBoolean)
  {
    this.mPhoneController.handleBlockList(paramArrayOfString, paramInt, paramBoolean);
  }
  
  public boolean handleChangeConversationSettings(String paramString, boolean paramBoolean)
  {
    return this.mPhoneController.handleChangeConversationSettings(paramString, paramBoolean);
  }
  
  public boolean handleChangeGroup(long paramLong, String paramString, int paramInt)
  {
    return this.mPhoneController.handleChangeGroup(paramLong, paramString, paramInt);
  }
  
  public boolean handleChangeGroupSettings(long paramLong, boolean paramBoolean)
  {
    this.mPhoneControllerListener.onChangeGroupSettingsReply(paramLong, paramBoolean, true);
    return true;
  }
  
  public boolean handleChangePublicGroup(long paramLong1, String paramString1, long paramLong2, long paramLong3, String paramString2, String[] paramArrayOfString, LocationInfo paramLocationInfo, String paramString3, int paramInt1, int paramInt2, int paramInt3)
  {
    return this.mPhoneController.handleChangePublicGroup(paramLong1, paramString1, paramLong2, paramLong3, paramString2, paramArrayOfString, paramLocationInfo, paramString3, paramInt1, paramInt2, paramInt3);
  }
  
  public boolean handleChangeSettings(int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    return true;
  }
  
  public boolean handleChangeUserActivitySettings(int paramInt)
  {
    return this.mPhoneController.handleChangeUserActivitySettings(paramInt);
  }
  
  public void handleCommError(int paramInt)
  {
    this.mPhoneController.handleCommError(paramInt);
  }
  
  public void handleConnectReject(long paramLong, int paramInt)
  {
    this.mPhoneController.handleConnectReject(paramLong, paramInt);
  }
  
  public void handleConnectivityChange(int paramInt)
  {
    logout("handleConnectivityChange#");
    this.mPhoneController.handleConnectivityChange(paramInt);
  }
  
  public boolean handleCreateGroup(int paramInt, String[] paramArrayOfString, String paramString)
  {
    return multyMethodCall(new PhoneControllerWrapper.4(this, paramInt, paramArrayOfString, paramString));
  }
  
  public boolean handleCreatePublicGroup(int paramInt, String paramString1, LocationInfo paramLocationInfo, String paramString2, String paramString3, long paramLong1, String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString4, long paramLong2, boolean paramBoolean)
  {
    return this.mPhoneController.handleCreatePublicGroup(paramInt, paramString1, paramLocationInfo, paramString2, paramString3, paramLong1, paramArrayOfString1, paramArrayOfString2, paramString4, paramLong2, paramBoolean);
  }
  
  public void handleDataInterruption(boolean paramBoolean)
  {
    this.mPhoneController.handleDataInterruption(paramBoolean);
  }
  
  public void handleDialConference(String paramString)
  {
    this.mPhoneController.handleDialConference(paramString);
  }
  
  public void handleGSMStateChange(int paramInt)
  {
    logout("handleGSMStateChange state:" + paramInt);
    this.mPhoneController.handleGSMStateChange(paramInt);
  }
  
  public boolean handleGetBillingToken()
  {
    logout("handleGetBillingToken#");
    return this.mPhoneController.handleGetBillingToken();
  }
  
  public boolean handleGetGroupInfo(int paramInt, long paramLong)
  {
    return this.mPhoneController.handleGetGroupInfo(paramInt, paramLong);
  }
  
  public boolean handleGetPublicGroupInfo(int paramInt1, long paramLong, int paramInt2, int paramInt3)
  {
    return this.mPhoneController.handleGetPublicGroupInfo(paramInt1, paramLong, paramInt2, paramInt3);
  }
  
  public boolean handleGetPublicGroupInfoUri(int paramInt, String paramString)
  {
    return this.mPhoneController.handleGetPublicGroupInfoUri(paramInt, paramString);
  }
  
  public boolean handleGetPublicGroupLikes(int paramInt1, long paramLong, int paramInt2, int paramInt3)
  {
    return this.mPhoneController.handleGetPublicGroupLikes(paramInt1, paramLong, paramInt2, paramInt3);
  }
  
  public boolean handleGetPublicGroupMessages(int paramInt1, long paramLong, int paramInt2)
  {
    return this.mPhoneController.handleGetPublicGroupMessages(paramInt1, paramLong, paramInt2);
  }
  
  public boolean handleGetUserActivity(String[] paramArrayOfString, int paramInt1, int paramInt2, long paramLong)
  {
    return this.mPhoneController.handleGetUserActivity(paramArrayOfString, paramInt1, paramInt2, paramLong);
  }
  
  public boolean handleGetUsersDetail(String[] paramArrayOfString)
  {
    return multyMethodCall(new PhoneControllerWrapper.8(this, paramArrayOfString));
  }
  
  public boolean handleGroupAddMember(long paramLong, String paramString)
  {
    return this.mPhoneController.handleGroupAddMember(paramLong, paramString);
  }
  
  public boolean handleGroupAddMembers(long paramLong, int paramInt, String[] paramArrayOfString)
  {
    return this.mPhoneController.handleGroupAddMembers(paramLong, paramInt, paramArrayOfString);
  }
  
  public boolean handleGroupLeave(long paramLong)
  {
    return multyMethodCall(new PhoneControllerWrapper.5(this, paramLong));
  }
  
  public boolean handleGroupUserIsTyping(long paramLong, boolean paramBoolean)
  {
    return this.mPhoneController.handleGroupUserIsTyping(paramLong, paramBoolean);
  }
  
  public boolean handleIsOnline(String paramString)
  {
    boolean bool = this.mPhoneController.handleIsOnline(paramString);
    logout("handleIsOnline number:" + paramString + ",isOnlineResult:" + bool);
    return bool;
  }
  
  public boolean handleJoinPublicGroup(long paramLong1, int paramInt, String paramString, long paramLong2)
  {
    return this.mPhoneController.handleJoinPublicGroup(paramLong1, paramInt, paramString, paramLong2);
  }
  
  public boolean handleLikePublicGroupMessage(long paramLong1, long paramLong2, int paramInt1, boolean paramBoolean, long paramLong3, int paramInt2)
  {
    return this.mPhoneController.handleLikePublicGroupMessage(paramLong1, paramLong2, paramInt1, paramBoolean, paramLong3, paramInt2);
  }
  
  public boolean handleMuteGroup(long paramLong, boolean paramBoolean)
  {
    this.mPhoneControllerListener.onMuteGroupReply(paramLong, paramBoolean, true);
    return true;
  }
  
  public void handleNetworkError(int paramInt, boolean paramBoolean)
  {
    this.mPhoneController.handleNetworkError(paramInt, paramBoolean);
  }
  
  public void handlePeerCapabilities(int paramInt)
  {
    logout("handlePeerCapabilities#");
    this.mPhoneController.handlePeerCapabilities(paramInt);
  }
  
  public boolean handleRecanonizeAck(String paramString)
  {
    return this.mPhoneController.handleRecanonizeAck(paramString);
  }
  
  public boolean handleRecoverGroups()
  {
    return multyMethodCall(new PhoneControllerWrapper.14(this));
  }
  
  public boolean handleReportFacebookStatistics(String paramString1, String paramString2)
  {
    return this.mPhoneController.handleReportFacebookStatistics(paramString1, paramString2);
  }
  
  public boolean handleSearchPublicGroupsByText(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    return this.mPhoneController.handleSearchPublicGroupsByText(paramInt1, paramString1, paramString2, paramInt2);
  }
  
  public boolean handleSearchPublicGroupsForCountry(int paramInt1, String paramString, int paramInt2)
  {
    return this.mPhoneController.handleSearchPublicGroupsForCountry(paramInt1, paramString, paramInt2);
  }
  
  public boolean handleSecondaryRegisteredAck(long paramLong)
  {
    return this.mPhoneController.handleSecondaryRegisteredAck(paramLong);
  }
  
  public boolean handleSendAddressBookForSecondaryAck(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return this.mPhoneController.handleSendAddressBookForSecondaryAck(paramArrayOfByte, paramInt1, paramInt2, paramBoolean);
  }
  
  public boolean handleSendAnimatedMessage(String paramString1, byte[] paramArrayOfByte, int paramInt1, LocationInfo paramLocationInfo, String paramString2, boolean paramBoolean, int paramInt2, String paramString3, String paramString4)
  {
    return this.mPhoneController.handleSendAnimatedMessage(paramString1, paramArrayOfByte, paramInt1, paramLocationInfo, paramString2, paramBoolean, paramInt2, paramString3, paramString4);
  }
  
  public boolean handleSendAnimatedToGroup(long paramLong, byte[] paramArrayOfByte, int paramInt1, LocationInfo paramLocationInfo, String paramString1, boolean paramBoolean, int paramInt2, String paramString2, String paramString3)
  {
    return this.mPhoneController.handleSendAnimatedToGroup(paramLong, paramArrayOfByte, paramInt1, paramLocationInfo, paramString1, paramBoolean, paramInt2, paramString2, paramString3);
  }
  
  public void handleSendGroupChangedAck(long paramLong)
  {
    this.mPhoneController.handleSendGroupChangedAck(paramLong);
  }
  
  public boolean handleSendMedia(String paramString1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, long paramLong, LocationInfo paramLocationInfo, String paramString2, int paramInt3, boolean paramBoolean, int paramInt4, String paramString3, String paramString4)
  {
    return multyMethodCall(new PhoneControllerWrapper.11(this, paramString1, paramArrayOfByte1, paramArrayOfByte2, paramInt1, paramInt2, paramLong, paramLocationInfo, paramString2, paramInt3, paramBoolean, paramInt4, paramString3, paramString4));
  }
  
  public boolean handleSendMediaToGroup(long paramLong1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, long paramLong2, LocationInfo paramLocationInfo, String paramString1, int paramInt3, boolean paramBoolean, int paramInt4, String paramString2, String paramString3)
  {
    return multyMethodCall(new PhoneControllerWrapper.12(this, paramLong1, paramArrayOfByte1, paramArrayOfByte2, paramInt1, paramInt2, paramLong2, paramLocationInfo, paramString1, paramInt3, paramBoolean, paramInt4, paramString2, paramString3));
  }
  
  public void handleSendMessageDeliveredAck(long paramLong)
  {
    this.mPhoneController.handleSendMessageDeliveredAck(paramLong);
  }
  
  public void handleSendMessageReceivedAck(long paramLong, boolean paramBoolean)
  {
    this.mPhoneController.handleSendMessageReceivedAck(paramLong, paramBoolean);
  }
  
  public void handleSendMessageReplyAck(long paramLong)
  {
    this.mPhoneController.handleSendMessageReplyAck(paramLong);
  }
  
  public boolean handleSendMissedCallsAck(long[] paramArrayOfLong)
  {
    return multyMethodCall(new PhoneControllerWrapper.21(this, paramArrayOfLong));
  }
  
  public void handleSendPublicGroupsUpdatedAck(long paramLong)
  {
    this.mPhoneController.handleSendPublicGroupsUpdatedAck(paramLong);
  }
  
  public boolean handleSendRegisteredNumbersAck(int paramInt, boolean paramBoolean)
  {
    return multyMethodCall(new PhoneControllerWrapper.20(this, paramInt, paramBoolean));
  }
  
  public boolean handleSendSyncConversationAck(String paramString, long paramLong, int paramInt)
  {
    return multyMethodCall(new PhoneControllerWrapper.19(this, paramString, paramLong, paramInt));
  }
  
  public boolean handleSendSyncGroupAck(long paramLong1, long paramLong2, int paramInt)
  {
    return multyMethodCall(new PhoneControllerWrapper.17(this, paramLong1, paramLong2, paramInt));
  }
  
  public void handleSendSyncMessageLikeAck(long paramLong)
  {
    this.mPhoneController.handleSendSyncMessageLikeAck(paramLong);
  }
  
  public boolean handleSendSyncMessagesAck(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    return multyMethodCall(new PhoneControllerWrapper.16(this, paramArrayOfLong1, paramArrayOfLong2));
  }
  
  public boolean handleSendText(String paramString1, String paramString2, int paramInt1, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt2)
  {
    return multyMethodCall(new PhoneControllerWrapper.10(this, paramString1, paramString2, paramInt1, paramLocationInfo, paramBoolean, paramInt2));
  }
  
  public boolean handleSendTextToGroup(long paramLong, String paramString, int paramInt1, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt2)
  {
    return this.mPhoneController.handleSendTextToGroup(paramLong, paramString, paramInt1, paramLocationInfo, paramBoolean, paramInt2);
  }
  
  public boolean handleSendUnregisteredNumbersAck(int paramInt)
  {
    return this.mPhoneController.handleSendUnregisteredNumbersAck(paramInt);
  }
  
  public boolean handleSendUpdateSelfUserDetailsAck(long paramLong)
  {
    return multyMethodCall(new PhoneControllerWrapper.22(this, paramLong));
  }
  
  public boolean handleSendVideo(String paramString1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, long paramLong, LocationInfo paramLocationInfo, String paramString2, int paramInt2, boolean paramBoolean, int paramInt3, String paramString3, String paramString4)
  {
    return this.mPhoneController.handleSendVideo(paramString1, paramArrayOfByte1, paramArrayOfByte2, paramInt1, paramLong, paramLocationInfo, paramString2, paramInt2, paramBoolean, paramInt3, paramString3, paramString4);
  }
  
  public boolean handleSendVideoToGroup(long paramLong1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, long paramLong2, LocationInfo paramLocationInfo, String paramString1, int paramInt2, boolean paramBoolean, int paramInt3, String paramString2, String paramString3)
  {
    return this.mPhoneController.handleSendVideoToGroup(paramLong1, paramArrayOfByte1, paramArrayOfByte2, paramInt1, paramLong2, paramLocationInfo, paramString1, paramInt2, paramBoolean, paramInt3, paramString2, paramString3);
  }
  
  public boolean handleSetCanonizationRules(String paramString)
  {
    return this.mPhoneController.handleSetCanonizationRules(paramString);
  }
  
  public boolean handleSyncConversation(String paramString, long paramLong, int paramInt)
  {
    return multyMethodCall(new PhoneControllerWrapper.18(this, paramString, paramLong, paramInt));
  }
  
  public boolean handleSyncDeletedMessages(ConversationToken[] paramArrayOfConversationToken, GroupToken[] paramArrayOfGroupToken, int paramInt)
  {
    return multyMethodCall(new PhoneControllerWrapper.15(this, paramArrayOfConversationToken, paramArrayOfGroupToken, paramInt));
  }
  
  public boolean handleSyncGroup(long paramLong1, long paramLong2, int paramInt)
  {
    return multyMethodCall(new PhoneControllerWrapper.13(this, paramLong1, paramLong2, paramInt));
  }
  
  public boolean handleSyncMessageLikeAck(long paramLong)
  {
    return this.mPhoneController.handleSyncMessageLikeAck(paramLong);
  }
  
  public boolean handleUnregisterApp(int paramInt1, int paramInt2)
  {
    return this.mPhoneController.handleUnregisterApp(paramInt1, paramInt2);
  }
  
  public boolean handleUpdateBadge(int paramInt)
  {
    return this.mPhoneController.handleUpdateBadge(paramInt);
  }
  
  public boolean handleUpdateExistingMsgStatus(long paramLong, int paramInt)
  {
    return this.mPhoneController.handleUpdateExistingMsgStatus(paramLong, paramInt);
  }
  
  public boolean handleUpdateExistingMsgStatusAck(long paramLong)
  {
    return this.mPhoneController.handleUpdateExistingMsgStatusAck(paramLong);
  }
  
  public boolean handleUpdateGroupConversationStatus(long paramLong)
  {
    return this.mPhoneController.handleUpdateGroupConversationStatus(paramLong);
  }
  
  public boolean handleUpdateGroupConversationStatusAck(long paramLong)
  {
    return this.mPhoneController.handleUpdateGroupConversationStatusAck(paramLong);
  }
  
  public boolean handleUpdateLanguage(String paramString)
  {
    return this.mPhoneController.handleUpdateLanguage(paramString);
  }
  
  public boolean handleUpdateUserName(String paramString)
  {
    return multyMethodCall(new PhoneControllerWrapper.7(this, paramString));
  }
  
  public boolean handleUpdateUserPhoto(long paramLong)
  {
    return multyMethodCall(new PhoneControllerWrapper.6(this, paramLong));
  }
  
  public boolean handleUserInfoChangeAck(long paramLong)
  {
    return this.mPhoneController.handleUserInfoChangeAck(paramLong);
  }
  
  public boolean handleUserIsTyping(String paramString, boolean paramBoolean)
  {
    return this.mPhoneController.handleUserIsTyping(paramString, paramBoolean);
  }
  
  public boolean handleValidatePublicGroupUri(int paramInt, String paramString)
  {
    return this.mPhoneController.handleValidatePublicGroupUri(paramInt, paramString);
  }
  
  public void init()
  {
    if (!this.mReady)
    {
      try
      {
        if (!this.mReady)
        {
          logout("library initialization starting");
          this.mReady = this.mPhoneController.loadLibrary();
          logout("library initialization has finished");
          if (!this.mReady) {
            logout("load library failed!");
          }
        }
        else
        {
          return;
        }
      }
      finally {}
      synchronized (this.mReadyListener)
      {
        HashSet localHashSet = new HashSet(this.mReadyListener);
        this.mReadyListener.clear();
        Iterator localIterator = localHashSet.iterator();
        if (localIterator.hasNext()) {
          ((PhoneControllerReadyListener)localIterator.next()).ready(this);
        }
      }
      getCallHandler().a(new PhoneControllerWrapper.2(this));
    }
  }
  
  public void initService()
  {
    if (!this.mReady)
    {
      logout("library initialization attemt to load library");
      init();
    }
    if (!this.mInitialized)
    {
      logout("library initialization pixi checking started");
      ViberEnv.getPixieController().addReadyListener(new PhoneControllerWrapper.3(this));
    }
  }
  
  public boolean isConnected()
  {
    return this.mPhoneControllerConnection.isConnected();
  }
  
  public boolean isFastNetwork()
  {
    return true;
  }
  
  public boolean isGSMCallActive()
  {
    if (this.mTelephonyMgr.getCallState() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      logout("IsGSMCallActive - " + bool);
      return bool;
    }
  }
  
  public boolean isInitWithInCorrectPushToken()
  {
    return (this.mInitialized) && (this.initedPushToken.equals(""));
  }
  
  public boolean isInitialized()
  {
    return this.mInitialized;
  }
  
  public boolean isRakutenPhone(String paramString)
  {
    return this.mPhoneController.isRakutenPhone(paramString);
  }
  
  public boolean isReady()
  {
    return this.mReady;
  }
  
  public boolean isRegisteredNumber(String paramString)
  {
    boolean bool = this.mPhoneController.isRegisteredNumber(paramString);
    logout("isRegisteredNumber number:" + paramString + ",isRegistered:" + bool);
    return bool;
  }
  
  public boolean isShortStandardBackgroundID(String paramString)
  {
    return this.mPhoneController.isShortStandardBackgroundID(paramString);
  }
  
  public boolean isVideoSupported()
  {
    return this.mPhoneController.isVideoSupported();
  }
  
  public int lengthenStandartBackgroundID(String paramString, String[] paramArrayOfString)
  {
    logout("lengthenStandartBackgroundID backgroundID:" + paramString);
    return this.mPhoneController.lengthenStandartBackgroundID(paramString, paramArrayOfString);
  }
  
  public void notifyActivityOnForeground(boolean paramBoolean)
  {
    if (isReady())
    {
      this.mPhoneController.notifyActivityOnForeground(paramBoolean);
      this.mApplication.getContactManager().a(paramBoolean);
      this.mApplication.getRecentCallsManager().a(paramBoolean);
    }
  }
  
  public void registerDelegate(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    this.mPhoneControllerListener.registerDelegate(new PhoneControllerDelegate[] { paramPhoneControllerDelegate });
  }
  
  public void registerDelegate(PhoneControllerDelegate paramPhoneControllerDelegate, Handler paramHandler)
  {
    this.mPhoneControllerListener.registerDelegate(paramPhoneControllerDelegate, paramHandler);
  }
  
  public void removeCallInfoListener(i parami)
  {
    try
    {
      this.mCallInfoListeners.remove(parami);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void removeDelegate(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    this.mPhoneControllerListener.removeDelegate(paramPhoneControllerDelegate);
  }
  
  public void removeInitializedListener(PhoneControllerWrapper.InitializedListener paramInitializedListener)
  {
    synchronized (this.mInitializedListeners)
    {
      this.mInitializedListeners.remove(paramInitializedListener);
      return;
    }
  }
  
  public void removeReadyListener(PhoneControllerReadyListener paramPhoneControllerReadyListener)
  {
    synchronized (this.mReadyListener)
    {
      this.mReadyListener.remove(paramPhoneControllerReadyListener);
      return;
    }
  }
  
  public void requestShutdown()
  {
    ViberApplication.log(3, LOG_TAG, "requestShutdown");
    this.mPhoneController.requestShutdown();
  }
  
  public void reschedulePhoneStateWatchdog(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      paramRunnable = this.phoneStateListenerWatchdog;
    }
    dropPhoneStateWatchdog(paramRunnable, false);
    this.watchDogHandler.postDelayed(paramRunnable, 30000L);
  }
  
  public void resetDeviceKey()
  {
    this.mPhoneController.resetDeviceKey();
  }
  
  public void sendCallStartedNotificationToSN(long paramLong)
  {
    this.mPhoneController.sendCallStartedNotificationToSN(paramLong);
  }
  
  public void sendKA()
  {
    this.mPhoneController.sendKA();
  }
  
  public boolean sendStatistics(String paramString)
  {
    return this.mPhoneController.sendStatistics(paramString);
  }
  
  public void sendTransferReqMsg(boolean paramBoolean, long paramLong, int paramInt)
  {
    this.mPhoneController.sendTransferReqMsg(paramBoolean, paramLong, paramInt);
  }
  
  public void setConnectionToken(long paramLong)
  {
    this.mPhoneController.setConnectionToken(paramLong);
  }
  
  public void setDeviceKey(byte[] paramArrayOfByte)
  {
    this.mPhoneController.setDeviceKey(paramArrayOfByte);
  }
  
  public int setDeviceOrientation(int paramInt1, int paramInt2, int paramInt3)
  {
    return this.mPhoneController.setDeviceOrientation(paramInt1, paramInt2, paramInt3);
  }
  
  public void setEnableVideo(boolean paramBoolean)
  {
    this.mPhoneController.setEnableVideo(paramBoolean);
  }
  
  public void setPixieBundle(String paramString)
  {
    this.mPhoneController.setPixieBundle(paramString);
  }
  
  public void setPixieMode(int paramInt)
  {
    this.mPhoneController.setPixieMode(paramInt);
  }
  
  public boolean shareAddressBookList(CAddressBookInfo[] paramArrayOfCAddressBookInfo, int paramInt1, int paramInt2)
  {
    return this.mPhoneController.shareAddressBookList(paramArrayOfCAddressBookInfo, paramInt1, paramInt2);
  }
  
  public boolean shareContact(CAddressBookInfo paramCAddressBookInfo, int paramInt1, int paramInt2)
  {
    logout("shareContact#");
    return this.mPhoneController.shareContact(paramCAddressBookInfo, paramInt1, paramInt2);
  }
  
  public int shortenStandardBackgroundID(String paramString, long[] paramArrayOfLong)
  {
    logout("shortenStandardBackgroundID backgroundID:" + paramString);
    return this.mPhoneController.shortenStandardBackgroundID(paramString, paramArrayOfLong);
  }
  
  public void startPixie(String paramString1, String paramString2, String paramString3, String paramString4, char paramChar)
  {
    this.mPhoneController.startPixie(paramString1, paramString2, paramString3, paramString4, paramChar);
  }
  
  public void testConnection(int paramInt)
  {
    this.mPhoneController.testConnection(paramInt);
  }
  
  public boolean updateData(String paramString)
  {
    return multyMethodCall(new PhoneControllerWrapper.9(this, paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper
 * JD-Core Version:    0.7.0.1
 */