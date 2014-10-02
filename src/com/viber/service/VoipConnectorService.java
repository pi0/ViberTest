package com.viber.service;

import android.app.Notification;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.Version;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.e.u;
import com.viber.voip.messages.i;
import com.viber.voip.w;

public class VoipConnectorService
  extends Service
{
  private boolean a;
  private boolean b = false;
  private Handler c = dc.a(dk.b);
  private Runnable d = new l(this);
  private BroadcastReceiver e = new m(this);
  private BroadcastReceiver f = new n(this);
  
  private void a(String paramString)
  {
    ViberApplication.log(3, "VoipConnectorService", paramString);
  }
  
  private void c()
  {
    Log.i("VoipConnectorService", "ViberApplication initApplication NOT_READY");
    ViberApplication.getInstance().initApplication();
    sendBroadcast(new Intent("com.viber.voip.action.VIBER_SERVICE_STARTED"));
  }
  
  private com.viber.voip.settings.l d()
  {
    return ViberApplication.preferences();
  }
  
  private void e()
  {
    a("KeepAlive VersionCheck Daemon <-- endSleep");
    Version localVersion1 = Version.parseVersionString(w.b());
    Version localVersion2 = Version.parseVersionString(f());
    if ((localVersion1 == null) || (localVersion2 == null)) {}
    while (!localVersion2.isNewerThen(localVersion1)) {
      return;
    }
    u.a().b();
  }
  
  /* Error */
  private String f()
  {
    // Byte code:
    //   0: sipush 128
    //   3: newarray byte
    //   5: astore_1
    //   6: aload_0
    //   7: ldc 131
    //   9: invokespecial 55	com/viber/service/VoipConnectorService:a	(Ljava/lang/String;)V
    //   12: new 133	java/io/DataInputStream
    //   15: dup
    //   16: ldc 135
    //   18: invokestatic 141	com/viber/voip/ViberEnv:newHttpRequest	(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;
    //   21: invokeinterface 147 1 0
    //   26: invokespecial 150	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   29: astore 7
    //   31: new 152	java/io/ByteArrayOutputStream
    //   34: dup
    //   35: invokespecial 153	java/io/ByteArrayOutputStream:<init>	()V
    //   38: astore 8
    //   40: aload 7
    //   42: aload_1
    //   43: invokevirtual 159	java/io/InputStream:read	([B)I
    //   46: istore 9
    //   48: iload 9
    //   50: iconst_m1
    //   51: if_icmpeq +31 -> 82
    //   54: aload 8
    //   56: aload_1
    //   57: iconst_0
    //   58: iload 9
    //   60: invokevirtual 163	java/io/ByteArrayOutputStream:write	([BII)V
    //   63: goto -23 -> 40
    //   66: astore 5
    //   68: ldc 165
    //   70: astore_3
    //   71: aload 5
    //   73: astore 6
    //   75: aload 6
    //   77: invokevirtual 168	java/net/MalformedURLException:printStackTrace	()V
    //   80: aload_3
    //   81: areturn
    //   82: aload 7
    //   84: invokevirtual 171	java/io/InputStream:close	()V
    //   87: new 173	java/lang/String
    //   90: dup
    //   91: aload 8
    //   93: invokevirtual 177	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   96: invokespecial 180	java/lang/String:<init>	([B)V
    //   99: invokevirtual 183	java/lang/String:trim	()Ljava/lang/String;
    //   102: astore 10
    //   104: aload 10
    //   106: astore_3
    //   107: aload_0
    //   108: new 185	java/lang/StringBuilder
    //   111: dup
    //   112: invokespecial 186	java/lang/StringBuilder:<init>	()V
    //   115: ldc 188
    //   117: invokevirtual 192	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: aload_3
    //   121: invokevirtual 192	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: invokevirtual 195	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   127: invokespecial 55	com/viber/service/VoipConnectorService:a	(Ljava/lang/String;)V
    //   130: aload_3
    //   131: areturn
    //   132: astore 6
    //   134: goto -59 -> 75
    //   137: astore_2
    //   138: ldc 165
    //   140: astore_3
    //   141: aload_2
    //   142: astore 4
    //   144: aload 4
    //   146: invokevirtual 196	java/io/IOException:printStackTrace	()V
    //   149: aload_3
    //   150: areturn
    //   151: astore 4
    //   153: goto -9 -> 144
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	VoipConnectorService
    //   5	52	1	arrayOfByte	byte[]
    //   137	5	2	localIOException1	java.io.IOException
    //   70	80	3	localObject	java.lang.Object
    //   142	3	4	localIOException2	java.io.IOException
    //   151	1	4	localIOException3	java.io.IOException
    //   66	6	5	localMalformedURLException1	java.net.MalformedURLException
    //   73	3	6	localMalformedURLException2	java.net.MalformedURLException
    //   132	1	6	localMalformedURLException3	java.net.MalformedURLException
    //   29	54	7	localDataInputStream	java.io.DataInputStream
    //   38	54	8	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   46	13	9	i	int
    //   102	3	10	str	String
    // Exception table:
    //   from	to	target	type
    //   6	40	66	java/net/MalformedURLException
    //   40	48	66	java/net/MalformedURLException
    //   54	63	66	java/net/MalformedURLException
    //   82	104	66	java/net/MalformedURLException
    //   107	130	132	java/net/MalformedURLException
    //   6	40	137	java/io/IOException
    //   40	48	137	java/io/IOException
    //   54	63	137	java/io/IOException
    //   82	104	137	java/io/IOException
    //   107	130	151	java/io/IOException
  }
  
  public void a()
  {
    Log.d("ViberApplication", "VoipConnectorService killSelf");
    this.b = true;
    stopForeground(true);
    ViberApplication.getInstance().getPhoneController(true).requestShutdown();
    stopSelf();
    Log.d("ViberApplication", "VoipConnectorService killSelf finished");
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    long l = paramIntent.getLongExtra("message_id", 0L);
    int i = paramIntent.getIntExtra("timeout_type", 1);
    String str1 = paramIntent.getStringExtra("message_number");
    String str2 = paramIntent.getStringExtra("message_text");
    a("SentTimeout Daemon sleep <-- endSleep toNumber:" + str1 + ",msgId:" + l);
    switch (i)
    {
    default: 
      return;
    }
    ViberApplication.getInstance().getMessagesManager().a(l, str1, str2);
  }
  
  public void b()
  {
    boolean bool = ViberApplication.preferences().b(com.viber.voip.settings.j.Y(), true);
    a("settingChangeAction lastOnline:" + bool);
    Intent localIntent = new Intent("com.viber.voip.action.SETTINGS_CHANGE_DIALOG");
    localIntent.setFlags(268435456);
    startActivity(localIntent);
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.viber.voip.action.VIBER_SERVICE_EXIT");
    localIntentFilter.addAction("com.viber.voip.action.KEEP_ALIVE_RECEIVE");
    localIntentFilter.addAction("com.viber.voip.action.SEND_TIMEOUT");
    localIntentFilter.addAction("com.viber.voip.action.VERSION_CHECK");
    localIntentFilter.addAction("com.viber.voip.action.SETTINGS_CHANGE_CHECK");
    localIntentFilter.addAction("com.viber.voip.action.APP_ON_FOREGROUND");
    registerReceiver(this.f, localIntentFilter);
    registerReceiver(this.e, new IntentFilter("android.intent.action.AIRPLANE_MODE"));
  }
  
  public void onDestroy()
  {
    a("onDestroy() killRequested: " + this.b);
    unregisterReceiver(this.f);
    unregisterReceiver(this.e);
    if (!this.b)
    {
      sendBroadcast(new Intent("com.viber.voip.action.VIBER_SERVICE_STOP"), null);
      sendOrderedBroadcast(new Intent("com.viber.voip.action.VIBER_SERVICE_EXIT"), null);
    }
    if (this.b) {
      sendBroadcast(new Intent("com.viber.voip.action.VIBER_APP_EXIT"));
    }
    super.onDestroy();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if ((paramIntent != null) && (paramIntent.getAction() != null) && (!this.b))
    {
      if ((this.a) || (!ViberApplication.getInstance().getPhoneController(false).isReady())) {
        break label69;
      }
      this.a = true;
      dc.a(dk.b).post(new j(this));
    }
    for (;;)
    {
      return super.onStartCommand(paramIntent, paramInt1, paramInt2);
      label69:
      if ((!ViberApplication.getInstance().getPhoneController(false).isReady()) && ((paramIntent == null) || (paramIntent.getAction() == null) || (paramIntent.getAction().equals("com.viber.voip.action.VIBER_SERVICE"))))
      {
        this.a = true;
        dc.a(dk.b).postDelayed(new k(this), 300L);
      }
      else if (paramIntent.getAction().equals("com.viber.voip.action.VIBER_SERVICE_FOREGROUND"))
      {
        startForeground(paramIntent.getIntExtra("notification_id", 0), (Notification)paramIntent.getParcelableExtra("notification"));
      }
      else if (paramIntent.getAction().equals("com.viber.voip.action.VIBER_SERVICE_BACKGROUND"))
      {
        stopForeground(true);
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.VoipConnectorService
 * JD-Core Version:    0.7.0.1
 */