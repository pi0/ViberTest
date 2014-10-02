package com.viber.service;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.viber.voip.ViberApplication;

public class KeepAliveReceiver
  extends BroadcastReceiver
{
  static final Intent c = new Intent("com.viber.voip.action.KEEP_ALIVE_RECEIVE");
  static final Intent d = new Intent("com.viber.voip.action.VERSION_CHECK");
  static volatile PendingIntent e;
  static volatile PendingIntent f;
  private static final String g = KeepAliveReceiver.class.getSimpleName();
  boolean a = false;
  boolean b = false;
  
  private void a(Context paramContext, Intent paramIntent)
  {
    a("onReceive intent:" + paramIntent + ", data:" + paramIntent.getDataString());
    if (this.b) {}
    do
    {
      do
      {
        do
        {
          return;
          if ("com.viber.voip.action.VIBER_SERVICE_STARTED".equals(paramIntent.getAction()))
          {
            this.a = true;
            a(paramContext);
            b(paramContext);
            return;
          }
          if ("com.viber.voip.action.VIBER_SERVICE_STOP".equals(paramIntent.getAction()))
          {
            this.a = true;
            return;
          }
          if ("com.viber.voip.action.KEEP_ALIVE_RECEIVE".equals(paramIntent.getAction()))
          {
            c(paramContext);
            return;
          }
        } while ("android.intent.action.MEDIA_EJECT".equals(paramIntent.getAction()));
        if ("com.viber.voip.action.VERSION_CHECK".equals(paramIntent.getAction()))
        {
          b(paramContext);
          return;
        }
      } while (!"com.viber.voip.action.VIBER_SERVICE_EXIT".equals(paramIntent.getAction()));
      this.a = true;
      this.b = true;
    } while (e == null);
    ((AlarmManager)paramContext.getSystemService("alarm")).cancel(e);
    ((AlarmManager)paramContext.getSystemService("alarm")).cancel(f);
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, g, paramString);
  }
  
  private void c(Context paramContext)
  {
    if ((!this.a) && (!this.b)) {
      a(paramContext);
    }
  }
  
  public void a(Context paramContext)
  {
    long l = 600000L + System.currentTimeMillis();
    try
    {
      if (e == null) {
        e = PendingIntent.getBroadcast(paramContext, 0, c, 134217728);
      }
      ((AlarmManager)paramContext.getSystemService("alarm")).set(0, l, e);
      a("KeepAliveDaemon sleep ZZZzzzzZ --> :" + l);
      return;
    }
    catch (Exception localException)
    {
      a("KeepAliveDaemon sleep error (!) : " + localException);
    }
  }
  
  public void b(Context paramContext)
  {
    long l = 43200000L + System.currentTimeMillis();
    try
    {
      if (f == null) {
        f = PendingIntent.getBroadcast(paramContext, 0, d, 134217728);
      }
      ((AlarmManager)paramContext.getSystemService("alarm")).set(0, l, f);
      a("KeepAlive VersionCheck Daemon sleep ZZZzzzzZ --> :" + l);
      return;
    }
    catch (Exception localException)
    {
      a("KeepAlive VersionCheck Daemon sleep error (!) : " + localException);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    a(paramContext, paramIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.KeepAliveReceiver
 * JD-Core Version:    0.7.0.1
 */