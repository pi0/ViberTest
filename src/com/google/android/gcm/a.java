package com.google.android.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.util.Log;

public final class a
{
  private static GCMBroadcastReceiver a;
  private static String b;
  
  public static String a(Context paramContext, String paramString)
  {
    SharedPreferences localSharedPreferences = j(paramContext);
    String str = localSharedPreferences.getString("regId", "");
    int i = i(paramContext);
    Log.v("GCMRegistrar", "Saving regId on app version " + i);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.putString("regId", paramString);
    localEditor.putInt("appVersion", i);
    localEditor.commit();
    return str;
  }
  
  static String a(String... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      throw new IllegalArgumentException("No senderIds");
    }
    StringBuilder localStringBuilder = new StringBuilder(paramVarArgs[0]);
    for (int i = 1; i < paramVarArgs.length; i++) {
      localStringBuilder.append(',').append(paramVarArgs[i]);
    }
    return localStringBuilder.toString();
  }
  
  public static void a(Context paramContext)
  {
    int i = Build.VERSION.SDK_INT;
    if (i < 8) {
      throw new UnsupportedOperationException("Device must be at least API Level 8 (instead of " + i + ")");
    }
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      localPackageManager.getPackageInfo("com.google.android.gsf", 0);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new UnsupportedOperationException("Device does not have package com.google.android.gsf");
    }
  }
  
  static void a(Context paramContext, int paramInt)
  {
    SharedPreferences.Editor localEditor = j(paramContext).edit();
    localEditor.putInt("backoff_ms", paramInt);
    localEditor.commit();
  }
  
  public static void a(Context paramContext, String... paramVarArgs)
  {
    g(paramContext);
    b(paramContext, paramVarArgs);
  }
  
  static void a(String paramString)
  {
    Log.v("GCMRegistrar", "Setting the name of retry receiver class to " + paramString);
    b = paramString;
  }
  
  static void b(Context paramContext)
  {
    Log.v("GCMRegistrar", "Unregistering app " + paramContext.getPackageName());
    Intent localIntent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
    localIntent.setPackage("com.google.android.gsf");
    localIntent.putExtra("app", PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0));
    paramContext.startService(localIntent);
  }
  
  static void b(Context paramContext, String... paramVarArgs)
  {
    String str = a(paramVarArgs);
    Log.v("GCMRegistrar", "Registering app " + paramContext.getPackageName() + " of senders " + str);
    Intent localIntent = new Intent("com.google.android.c2dm.intent.REGISTER");
    localIntent.setPackage("com.google.android.gsf");
    localIntent.putExtra("app", PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0));
    localIntent.putExtra("sender", str);
    paramContext.startService(localIntent);
  }
  
  /* Error */
  static void c(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 180	com/google/android/gcm/a:a	Lcom/google/android/gcm/GCMBroadcastReceiver;
    //   6: ifnonnull +94 -> 100
    //   9: getstatic 131	com/google/android/gcm/a:b	Ljava/lang/String;
    //   12: ifnonnull +92 -> 104
    //   15: ldc 29
    //   17: ldc 182
    //   19: invokestatic 185	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   22: pop
    //   23: new 187	com/google/android/gcm/GCMBroadcastReceiver
    //   26: dup
    //   27: invokespecial 188	com/google/android/gcm/GCMBroadcastReceiver:<init>	()V
    //   30: putstatic 180	com/google/android/gcm/a:a	Lcom/google/android/gcm/GCMBroadcastReceiver;
    //   33: aload_0
    //   34: invokevirtual 136	android/content/Context:getPackageName	()Ljava/lang/String;
    //   37: astore 4
    //   39: new 190	android/content/IntentFilter
    //   42: dup
    //   43: ldc 192
    //   45: invokespecial 193	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   48: astore 5
    //   50: aload 5
    //   52: aload 4
    //   54: invokevirtual 196	android/content/IntentFilter:addCategory	(Ljava/lang/String;)V
    //   57: new 31	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   64: aload 4
    //   66: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: ldc 198
    //   71: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: astore 6
    //   79: ldc 29
    //   81: ldc 200
    //   83: invokestatic 54	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   86: pop
    //   87: aload_0
    //   88: getstatic 180	com/google/android/gcm/a:a	Lcom/google/android/gcm/GCMBroadcastReceiver;
    //   91: aload 5
    //   93: aload 6
    //   95: aconst_null
    //   96: invokevirtual 204	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    //   99: pop
    //   100: ldc 2
    //   102: monitorexit
    //   103: return
    //   104: getstatic 131	com/google/android/gcm/a:b	Ljava/lang/String;
    //   107: invokestatic 210	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   110: invokevirtual 214	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   113: checkcast 187	com/google/android/gcm/GCMBroadcastReceiver
    //   116: putstatic 180	com/google/android/gcm/a:a	Lcom/google/android/gcm/GCMBroadcastReceiver;
    //   119: goto -86 -> 33
    //   122: astore_2
    //   123: ldc 29
    //   125: new 31	java/lang/StringBuilder
    //   128: dup
    //   129: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   132: ldc 216
    //   134: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: getstatic 131	com/google/android/gcm/a:b	Ljava/lang/String;
    //   140: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: ldc 218
    //   145: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: ldc 187
    //   150: invokevirtual 221	java/lang/Class:getName	()Ljava/lang/String;
    //   153: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: ldc 223
    //   158: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: invokestatic 185	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   167: pop
    //   168: new 187	com/google/android/gcm/GCMBroadcastReceiver
    //   171: dup
    //   172: invokespecial 188	com/google/android/gcm/GCMBroadcastReceiver:<init>	()V
    //   175: putstatic 180	com/google/android/gcm/a:a	Lcom/google/android/gcm/GCMBroadcastReceiver;
    //   178: goto -145 -> 33
    //   181: astore_1
    //   182: ldc 2
    //   184: monitorexit
    //   185: aload_1
    //   186: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	187	0	paramContext	Context
    //   181	5	1	localObject	Object
    //   122	1	2	localException	java.lang.Exception
    //   37	28	4	str1	String
    //   48	44	5	localIntentFilter	android.content.IntentFilter
    //   77	17	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   104	119	122	java/lang/Exception
    //   3	33	181	finally
    //   33	100	181	finally
    //   104	119	181	finally
    //   123	178	181	finally
  }
  
  public static String d(Context paramContext)
  {
    SharedPreferences localSharedPreferences = j(paramContext);
    String str = localSharedPreferences.getString("regId", "");
    int i = localSharedPreferences.getInt("appVersion", -2147483648);
    int j = i(paramContext);
    if ((i != -2147483648) && (i != j))
    {
      Log.v("GCMRegistrar", "App version changed from " + i + " to " + j + "; resetting registration id");
      f(paramContext);
      str = "";
    }
    return str;
  }
  
  public static boolean e(Context paramContext)
  {
    return d(paramContext).length() > 0;
  }
  
  static String f(Context paramContext)
  {
    return a(paramContext, "");
  }
  
  static void g(Context paramContext)
  {
    Log.d("GCMRegistrar", "resetting backoff for " + paramContext.getPackageName());
    a(paramContext, 3000);
  }
  
  static int h(Context paramContext)
  {
    return j(paramContext).getInt("backoff_ms", 3000);
  }
  
  private static int i(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new RuntimeException("Coult not get package name: " + localNameNotFoundException);
    }
  }
  
  private static SharedPreferences j(Context paramContext)
  {
    return paramContext.getSharedPreferences("com.google.android.gcm", 0);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.google.android.gcm.a
 * JD-Core Version:    0.7.0.1
 */