package com.viber.voip.api.billing;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import com.android.b.a.a;
import com.android.b.a.b;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class InAppBillingService
  extends Service
  implements ServiceConnection
{
  private static final long AUTOUNBIND_TIMEOUT = 60000L;
  private static final String LOG_TAG = InAppBillingService.class.getSimpleName();
  protected InAppBillingService.InAppBillingServiceServiceImpl clientStub = new InAppBillingService.InAppBillingServiceServiceImpl(this);
  AtomicInteger mClientCount = new AtomicInteger();
  private Handler mHandler = new Handler();
  protected volatile a mService;
  private Object mServiceSync = new Object();
  private Runnable mUnbindRunnable = new InAppBillingService.1(this);
  
  private void clientBegin()
  {
    log("clientBegin, client count: " + this.mClientCount.incrementAndGet());
    unscheduleUnbind();
  }
  
  private void clientEnd()
  {
    int i = this.mClientCount.decrementAndGet();
    log("clientEnd, client count: " + i);
    if (i == 0) {
      scheduleUnbind();
    }
  }
  
  private a getBillingService()
  {
    for (;;)
    {
      Intent localIntent;
      synchronized (this.mServiceSync)
      {
        if (isMainThread())
        {
          log("bindRealBillingIfNeeded called from main thread!!! Ignoring");
          return null;
          log("calling bindService...");
          bindService(localIntent, this, 1);
          log("bindService done");
        }
      }
      try
      {
        log("waiting for connection...");
        this.mServiceSync.wait();
        log("waiting for connection finished");
        if (this.mService == null)
        {
          localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
          if (!getPackageManager().queryIntentServices(localIntent, 0).isEmpty()) {
            continue;
          }
          return null;
          localObject2 = finally;
          throw localObject2;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          log("waiting for connection interrupted!");
          localInterruptedException.printStackTrace();
        }
        a locala = this.mService;
        return locala;
      }
    }
  }
  
  private boolean isMainThread()
  {
    return Looper.getMainLooper().getThread() == Thread.currentThread();
  }
  
  private static void log(String paramString) {}
  
  private void scheduleUnbind()
  {
    log("scheduleUnbind");
    this.mHandler.removeCallbacks(this.mUnbindRunnable);
    this.mHandler.postDelayed(this.mUnbindRunnable, 60000L);
  }
  
  private void unbind()
  {
    log("unbind()");
    unbindService(this);
    synchronized (this.mServiceSync)
    {
      this.mService = null;
      return;
    }
  }
  
  private void unscheduleUnbind()
  {
    log("unscheduleUnbind");
    this.mHandler.removeCallbacks(this.mUnbindRunnable);
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    log("onBind()");
    return this.clientStub.asBinder();
  }
  
  public void onCreate() {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    log("onServiceConnected()");
    synchronized (this.mServiceSync)
    {
      this.mService = b.a(paramIBinder);
      this.mServiceSync.notifyAll();
      return;
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    log("onServiceDisconnected()");
    synchronized (this.mServiceSync)
    {
      this.mService = null;
      return;
    }
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    log("onStartCommand()");
    return super.onStartCommand(paramIntent, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.billing.InAppBillingService
 * JD-Core Version:    0.7.0.1
 */