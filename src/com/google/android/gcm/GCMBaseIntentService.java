package com.google.android.gcm;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.util.Log;
import java.util.Random;
import java.util.concurrent.TimeUnit;

public abstract class GCMBaseIntentService
  extends IntentService
{
  private static PowerManager.WakeLock a;
  private static final Object b = GCMBaseIntentService.class;
  private static int d = 0;
  private static final Random e = new Random();
  private static final int f = (int)TimeUnit.SECONDS.toMillis(3600L);
  private static final String g = Long.toBinaryString(e.nextLong());
  private final String[] c;
  
  protected GCMBaseIntentService()
  {
    this(a("DynamicSenderIds"), null);
  }
  
  private GCMBaseIntentService(String paramString, String[] paramArrayOfString)
  {
    super(paramString);
    this.c = paramArrayOfString;
  }
  
  protected GCMBaseIntentService(String... paramVarArgs)
  {
    this(a(paramVarArgs), paramVarArgs);
  }
  
  private static String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder().append("GCMIntentService-").append(paramString).append("-");
    int i = 1 + d;
    d = i;
    String str = i;
    Log.v("GCMBaseIntentService", "Intent service name: " + str);
    return str;
  }
  
  private static String a(String[] paramArrayOfString)
  {
    return a(a.a(paramArrayOfString));
  }
  
  static void a(Context paramContext, Intent paramIntent, String paramString)
  {
    synchronized (b)
    {
      if (a == null) {
        a = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "GCM_LIB");
      }
      Log.v("GCMBaseIntentService", "Acquiring wakelock");
      a.acquire();
      paramIntent.setClassName(paramContext, paramString);
      paramContext.startService(paramIntent);
      return;
    }
  }
  
  private void b(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("registration_id");
    String str2 = paramIntent.getStringExtra("error");
    String str3 = paramIntent.getStringExtra("unregistered");
    Log.d("GCMBaseIntentService", "handleRegistration: registrationId = " + str1 + ", error = " + str2 + ", unregistered = " + str3);
    if (str1 != null)
    {
      a.g(paramContext);
      a.a(paramContext, str1);
      c(paramContext, str1);
    }
    int i;
    do
    {
      return;
      if (str3 != null)
      {
        a.g(paramContext);
        d(paramContext, a.f(paramContext));
        return;
      }
      Log.d("GCMBaseIntentService", "Registration error: " + str2);
      if (!"SERVICE_NOT_AVAILABLE".equals(str2)) {
        break label296;
      }
      if (!a(paramContext, str2)) {
        break;
      }
      i = a.h(paramContext);
      int j = i / 2 + e.nextInt(i);
      Log.d("GCMBaseIntentService", "Scheduling registration retry, backoff = " + j + " (" + i + ")");
      Intent localIntent = new Intent("com.google.android.gcm.intent.RETRY");
      localIntent.putExtra("token", g);
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 0);
      ((AlarmManager)paramContext.getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + j, localPendingIntent);
    } while (i >= f);
    a.a(paramContext, i * 2);
    return;
    Log.d("GCMBaseIntentService", "Not retrying failed operation");
    return;
    label296:
    b(paramContext, str2);
  }
  
  protected void a(Context paramContext, int paramInt) {}
  
  protected abstract void a(Context paramContext, Intent paramIntent);
  
  protected boolean a(Context paramContext, String paramString)
  {
    return true;
  }
  
  protected String[] a(Context paramContext)
  {
    if (this.c == null) {
      throw new IllegalStateException("sender id not set on constructor");
    }
    return this.c;
  }
  
  protected abstract void b(Context paramContext, String paramString);
  
  protected abstract void c(Context paramContext, String paramString);
  
  protected abstract void d(Context paramContext, String paramString);
  
  public final void onHandleIntent(Intent paramIntent)
  {
    try
    {
      localContext = getApplicationContext();
      str1 = paramIntent.getAction();
      if (str1.equals("com.google.android.c2dm.intent.REGISTRATION"))
      {
        a.c(localContext);
        b(localContext, paramIntent);
      }
    }
    finally
    {
      for (;;)
      {
        Context localContext;
        String str1;
        String str3;
        synchronized (b)
        {
          if (a != null)
          {
            Log.v("GCMBaseIntentService", "Releasing wakelock");
            a.release();
            return;
            if (str1.equals("com.google.android.c2dm.intent.RECEIVE"))
            {
              str3 = paramIntent.getStringExtra("message_type");
              if (str3 != null) {
                if (str3.equals("deleted_messages"))
                {
                  String str4 = paramIntent.getStringExtra("total_deleted");
                  if (str4 == null) {
                    continue;
                  }
                  try
                  {
                    int i = Integer.parseInt(str4);
                    Log.v("GCMBaseIntentService", "Received deleted messages notification: " + i);
                    a(localContext, i);
                  }
                  catch (NumberFormatException localNumberFormatException)
                  {
                    Log.e("GCMBaseIntentService", "GCM returned invalid number of deleted messages: " + str4);
                  }
                  continue;
                  localObject1 = finally;
                }
              }
            }
          }
        }
        synchronized (b)
        {
          if (a != null)
          {
            Log.v("GCMBaseIntentService", "Releasing wakelock");
            a.release();
            throw localObject1;
            Log.e("GCMBaseIntentService", "Received unknown special message: " + str3);
            continue;
            a(localContext, paramIntent);
            continue;
            if (!str1.equals("com.google.android.gcm.intent.RETRY")) {
              continue;
            }
            String str2 = paramIntent.getStringExtra("token");
            if (!g.equals(str2))
            {
              Log.e("GCMBaseIntentService", "Received invalid token: " + str2);
              for (;;)
              {
                synchronized (b)
                {
                  if (a != null)
                  {
                    Log.v("GCMBaseIntentService", "Releasing wakelock");
                    a.release();
                    return;
                  }
                }
                Log.e("GCMBaseIntentService", "Wakelock reference is null");
              }
            }
            if (a.e(localContext))
            {
              a.b(localContext);
              continue;
            }
            a.b(localContext, a(localContext));
            continue;
            Log.e("GCMBaseIntentService", "Wakelock reference is null");
            continue;
            localObject5 = finally;
            throw localObject5;
          }
          Log.e("GCMBaseIntentService", "Wakelock reference is null");
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.google.android.gcm.GCMBaseIntentService
 * JD-Core Version:    0.7.0.1
 */