package com.viber.voip.pixie;

import android.os.Handler;
import android.os.HandlerThread;
import com.viber.jni.PhoneControllerReadyListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.process.k;
import java.net.ProxySelector;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class PixieControllerImpl
  implements PixieController
{
  public static final int INVALID_PORT;
  private static final String LOG_TAG = PixieController.class.getSimpleName();
  private static PixieControllerImpl.PixieSettings mPixieSettings;
  private static PixieController sInstance;
  private boolean mIsOkayToAccessNetwork = false;
  private int mLocalProxyPort;
  private PhoneControllerWrapper mPhoneController;
  private Handler mPixieHandler;
  PixieServices.PixieServicesCallback mPixieListener = new PixieControllerImpl.4(this);
  private PixieServices mPixieServices;
  private Set<PixieController.PixieReadyListener> mReadyListeners = new HashSet();
  private boolean mShouldUsePixieSystem = false;
  private PhoneControllerReadyListener mStartPixieOnPhoneControllerReady = new PixieControllerImpl.1(this);
  private boolean mStartPixieWasCalled = false;
  private PhoneControllerReadyListener mUpdateEdgeListOnPhoneControllerReady = new PixieControllerImpl.2(this);
  private PhoneControllerWrapper.InitializedListener mUpdatePixieModeOnPhoneControllerInitialized = new PixieControllerImpl.3(this);
  private boolean mUseLocalProxy;
  Runnable startPixieTask = new PixieControllerImpl.5(this);
  
  private PixieControllerImpl()
  {
    HandlerThread localHandlerThread = new HandlerThread("PixieThread");
    localHandlerThread.start();
    this.mPixieHandler = new Handler(localHandlerThread.getLooper());
  }
  
  public static PixieController _getInstance()
  {
    try
    {
      if (sInstance == null)
      {
        sInstance = new PixieControllerImpl();
        mPixieSettings = getPixieSettings();
      }
      PixieController localPixieController = sInstance;
      return localPixieController;
    }
    finally {}
  }
  
  private static PixieControllerImpl.PixieSettings getPixieSettings()
  {
    return PixieControllerImpl.PixieSettings.PIXIE_MODE_AUTO;
  }
  
  private static boolean isServerProcess()
  {
    return k.a() == k.a;
  }
  
  private void notifyItsOkayToUseNetwork()
  {
    synchronized (this.mReadyListeners)
    {
      this.mIsOkayToAccessNetwork = true;
      HashSet localHashSet = new HashSet(this.mReadyListeners);
      this.mReadyListeners.clear();
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext())
      {
        PixieController.PixieReadyListener localPixieReadyListener = (PixieController.PixieReadyListener)localIterator.next();
        ViberApplication.log(3, LOG_TAG, "Pixie: Notifying that its okay to use network.");
        localPixieReadyListener.onReady();
      }
    }
  }
  
  public static void setupClientToUseLocalProxy(int paramInt)
  {
    ProxySelector.setDefault(new PixieControllerImpl.PixieProxySelector(paramInt));
  }
  
  /* Error */
  private void startPixieIfNeeded(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: ifne +10 -> 13
    //   6: aload_0
    //   7: getfield 55	com/viber/voip/pixie/PixieControllerImpl:mStartPixieWasCalled	Z
    //   10: ifne +37 -> 47
    //   13: invokestatic 228	com/viber/voip/pixie/PixieControllerImpl:isServerProcess	()Z
    //   16: ifeq +34 -> 50
    //   19: aload_0
    //   20: getfield 110	com/viber/voip/pixie/PixieControllerImpl:mPixieHandler	Landroid/os/Handler;
    //   23: aload_0
    //   24: getfield 89	com/viber/voip/pixie/PixieControllerImpl:startPixieTask	Ljava/lang/Runnable;
    //   27: invokevirtual 232	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   30: aload_0
    //   31: getfield 110	com/viber/voip/pixie/PixieControllerImpl:mPixieHandler	Landroid/os/Handler;
    //   34: aload_0
    //   35: getfield 89	com/viber/voip/pixie/PixieControllerImpl:startPixieTask	Ljava/lang/Runnable;
    //   38: invokevirtual 236	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   41: pop
    //   42: aload_0
    //   43: iconst_1
    //   44: putfield 55	com/viber/voip/pixie/PixieControllerImpl:mStartPixieWasCalled	Z
    //   47: aload_0
    //   48: monitorexit
    //   49: return
    //   50: iconst_3
    //   51: getstatic 48	com/viber/voip/pixie/PixieControllerImpl:LOG_TAG	Ljava/lang/String;
    //   54: ldc 238
    //   56: invokestatic 211	com/viber/voip/ViberApplication:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   59: new 240	com/viber/voip/pixie/PixieControllerImpl$6
    //   62: dup
    //   63: aload_0
    //   64: invokespecial 241	com/viber/voip/pixie/PixieControllerImpl$6:<init>	(Lcom/viber/voip/pixie/PixieControllerImpl;)V
    //   67: invokestatic 245	com/viber/voip/ViberApplication:getInstance	()Lcom/viber/voip/ViberApplication;
    //   70: invokevirtual 249	com/viber/voip/pixie/PixieControllerImpl$6:execute	(Landroid/content/Context;)V
    //   73: goto -31 -> 42
    //   76: astore_2
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_2
    //   80: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	this	PixieControllerImpl
    //   0	81	1	paramBoolean	boolean
    //   76	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   6	13	76	finally
    //   13	42	76	finally
    //   42	47	76	finally
    //   50	73	76	finally
  }
  
  public void addReadyListener(PixieController.PixieReadyListener paramPixieReadyListener)
  {
    synchronized (this.mReadyListeners)
    {
      boolean bool = this.mIsOkayToAccessNetwork;
      if (!bool)
      {
        this.mReadyListeners.add(paramPixieReadyListener);
        ViberApplication.log(3, LOG_TAG, "Pixie: Adding listener for pixie decision.");
      }
      if (bool)
      {
        ViberApplication.log(3, LOG_TAG, "Pixie: Immediate notification that its okay to use network dispatched tolistener.");
        paramPixieReadyListener.onReady();
      }
      return;
    }
  }
  
  public int getLocalProxyPort()
  {
    return this.mLocalProxyPort;
  }
  
  public int getPixieMode()
  {
    if (!isEnabled()) {
      return 0;
    }
    if (PixieServices.getInstance(ViberApplication.getInstance()).isCallsOverUDP()) {
      return 2;
    }
    return 1;
  }
  
  public int getPixiePort()
  {
    return this.mLocalProxyPort;
  }
  
  public void init()
  {
    if (isServerProcess())
    {
      this.mPhoneController = ViberApplication.getInstance().getPhoneController(false);
      ViberApplication.log(3, LOG_TAG, "Pixie: initialize");
    }
    startPixieIfNeeded(false);
  }
  
  public boolean isEnabled()
  {
    return this.mShouldUsePixieSystem;
  }
  
  public void removeReadyListener(PixieController.PixieReadyListener paramPixieReadyListener)
  {
    synchronized (this.mReadyListeners)
    {
      this.mReadyListeners.remove(paramPixieReadyListener);
      return;
    }
  }
  
  public boolean useLocalProxy()
  {
    return this.mUseLocalProxy;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.pixie.PixieControllerImpl
 * JD-Core Version:    0.7.0.1
 */