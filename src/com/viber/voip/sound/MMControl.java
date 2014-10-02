package com.viber.voip.sound;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Pair;
import android.view.KeyEvent;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.bluetooth.BTControl;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MMControl
  implements ServiceConnection
{
  private static final boolean ENABLE_RESUME = false;
  private static final int FIELDID_PACKAGE = 0;
  private static final int FIELDID_PAUSE_INTENT = 2;
  private static final int FIELDID_RESUME_INTENT = 3;
  private static final int FIELDID_SVCNAME = 1;
  private static final boolean SEND_SHUTUP_BROADCAST = true;
  public static final String TAG = MMControl.class.getSimpleName();
  private static final boolean USE_REMOTE_INTF_CTL = true;
  private static final List<String> blacklistedModels_badRemoteIntf;
  private static final List<Pair<String[], Object>> maintainableServicesList = new ArrayList();
  static volatile MMControl mediaController = null;
  private static final IntentFilter mediaPlaybackIntentFilter;
  private volatile int availableIntf = -1;
  private final Context context;
  private BroadcastReceiver dummyMusicServiceReceiver = new MMControl.1(this);
  private volatile boolean guessControlIsBroadcastOnly = false;
  private IInterface mGenericService = null;
  private volatile boolean mm_interrupted = false;
  private volatile boolean remoteIntfFailed = true;
  private ISoundService soundService;
  private volatile boolean wasPlaying_broadcasted = false;
  private volatile boolean wasPlaying_intf = false;
  
  static
  {
    blacklistedModels_badRemoteIntf = new ArrayList();
    mediaPlaybackIntentFilter = new IntentFilter();
    blacklistedModels_badRemoteIntf.add("GT-S5570");
    blacklistedModels_badRemoteIntf.add("Milestone");
    mediaPlaybackIntentFilter.addAction("com.android.music.metachanged");
    mediaPlaybackIntentFilter.addAction("com.android.music.queuechanged");
    mediaPlaybackIntentFilter.addAction("com.android.music.playbackcomplete");
    mediaPlaybackIntentFilter.addAction("com.android.music.playstatechanged");
    mediaPlaybackIntentFilter.addAction("com.android.music.musicservicecommand");
    mediaPlaybackIntentFilter.addAction("musicPlayer.service.updatePlayInfo");
    mediaPlaybackIntentFilter.addAction("com.android.music.musicservicecommand.pause");
    mediaPlaybackIntentFilter.addAction("com.android.music.musicservicecommand.togglepause");
    mediaPlaybackIntentFilter.addAction("com.htc.music.metachanged");
    mediaPlaybackIntentFilter.addAction("com.htc.music.queuechanged");
    mediaPlaybackIntentFilter.addAction("com.htc.music.playbackcomplete");
    mediaPlaybackIntentFilter.addAction("com.htc.music.playstatechanged");
    mediaPlaybackIntentFilter.addAction("com.htc.music.musicservicecommand");
    maintainableServicesList.add(new Pair(new String[] { "com.htc.music", "com.htc.music.MediaPlaybackService", "com.htc.music.musicservicecommand.pause", "com.htc.music.musicservicecommand.togglepause" }, com.b.a.b.class));
    maintainableServicesList.add(new Pair(new String[] { "com.android.music", "com.android.music.player.service.CorePlayerService", "com.android.music.musicservicecommand.pause", "com.android.music.musicservicecommand.togglepause" }, com.android.music.player.a.b.class));
    maintainableServicesList.add(new Pair(new String[] { "com.sec.android.app.music", "com.sec.android.app.music.player.service.CorePlayerService", "com.android.music.musicservicecommand.pause", "com.android.music.musicservicecommand.togglepause" }, com.sec.android.app.music.player.a.b.class));
    maintainableServicesList.add(new Pair(new String[] { "com.android.music", "com.android.music.MediaPlaybackService", "com.android.music.musicservicecommand.pause", "com.android.music.musicservicecommand.togglepause" }, com.android.music.b.class));
  }
  
  private MMControl(ISoundService paramISoundService)
  {
    this.soundService = paramISoundService;
    this.context = new ContextWrapper(paramISoundService.getContext().getApplicationContext());
    this.context.registerReceiver(this.dummyMusicServiceReceiver, mediaPlaybackIntentFilter);
    reconnect();
  }
  
  private Method findMethodDecl(Object paramObject, String paramString, Object... paramVarArgs)
  {
    if (paramObject == null)
    {
      localObject = null;
      return localObject;
    }
    Class[] arrayOfClass = objectToClassMap(paramVarArgs);
    Method[] arrayOfMethod = paramObject.getClass().getDeclaredMethods();
    int i = arrayOfMethod.length;
    int j = 0;
    Object localObject = null;
    label37:
    Method localMethod;
    if (j < i)
    {
      localMethod = arrayOfMethod[j];
      if (localMethod.getName().equals(paramString)) {
        break label69;
      }
    }
    for (;;)
    {
      j++;
      break label37;
      break;
      label69:
      if (arrayOfClass.length == localMethod.getParameterTypes().length)
      {
        int k = 0;
        for (;;)
        {
          if (k >= arrayOfClass.length) {
            break label215;
          }
          try
          {
            arrayOfClass[k].asSubclass(localMethod.getParameterTypes()[k]);
            k++;
          }
          catch (ClassCastException localClassCastException)
          {
            if (!localMethod.getParameterTypes()[k].isPrimitive()) {
              break label209;
            }
          }
        }
        if ((!arrayOfClass[k].isPrimitive()) && (((Integer.class.equals(arrayOfClass[k])) && (Integer.TYPE.equals(localMethod.getParameterTypes()[k]))) || (arrayOfClass[k].getSimpleName().equalsIgnoreCase(localMethod.getParameterTypes()[k].getSimpleName())))) {
          localObject = localMethod;
        }
        while (localObject != null)
        {
          return localObject;
          label209:
          localObject = null;
          continue;
          label215:
          localObject = localMethod;
        }
      }
    }
  }
  
  /* Error */
  public static MMControl getMediaController(ISoundService paramISoundService)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 253	com/viber/voip/sound/MMControl:hasBadRemoteInterface_blacklisted	()Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +10 -> 18
    //   11: aconst_null
    //   12: astore_3
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_3
    //   17: areturn
    //   18: getstatic 143	com/viber/voip/sound/MMControl:mediaController	Lcom/viber/voip/sound/MMControl;
    //   21: ifnonnull +14 -> 35
    //   24: new 2	com/viber/voip/sound/MMControl
    //   27: dup
    //   28: aload_0
    //   29: invokespecial 255	com/viber/voip/sound/MMControl:<init>	(Lcom/viber/voip/sound/ISoundService;)V
    //   32: putstatic 143	com/viber/voip/sound/MMControl:mediaController	Lcom/viber/voip/sound/MMControl;
    //   35: getstatic 143	com/viber/voip/sound/MMControl:mediaController	Lcom/viber/voip/sound/MMControl;
    //   38: astore_3
    //   39: goto -26 -> 13
    //   42: astore_1
    //   43: ldc 2
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	paramISoundService	ISoundService
    //   42	5	1	localObject	Object
    //   6	2	2	bool	boolean
    //   12	27	3	localMMControl	MMControl
    // Exception table:
    //   from	to	target	type
    //   3	7	42	finally
    //   18	35	42	finally
    //   35	39	42	finally
  }
  
  private static boolean hasBadRemoteInterface_blacklisted()
  {
    return blacklistedModels_badRemoteIntf.contains(Build.MODEL);
  }
  
  private boolean isServiceAccessible(IInterface paramIInterface, int paramInt)
  {
    if (-1 == paramInt) {
      return false;
    }
    ActivityManager localActivityManager = (ActivityManager)ViberApplication.getInstance().getSystemService("activity");
    Iterator localIterator = localActivityManager.getRunningServices(localActivityManager.getRunningAppProcesses().size()).iterator();
    while (localIterator.hasNext())
    {
      ActivityManager.RunningServiceInfo localRunningServiceInfo = (ActivityManager.RunningServiceInfo)localIterator.next();
      if (((localRunningServiceInfo.process != null) && (localRunningServiceInfo.process.equals(((String[])((Pair)maintainableServicesList.get(paramInt)).first)[0]))) || ((localRunningServiceInfo.service.getPackageName() != null) && (localRunningServiceInfo.service.getPackageName().equals(((String[])((Pair)maintainableServicesList.get(paramInt)).first)[0])))) {
        return true;
      }
    }
    return false;
  }
  
  private Class<?>[] objectToClassMap(Object... paramVarArgs)
  {
    if (paramVarArgs == null) {
      return new Class[0];
    }
    for (;;)
    {
      try
      {
        Class[] arrayOfClass = new Class[paramVarArgs.length];
        int i = 0;
        if (i < paramVarArgs.length)
        {
          if (paramVarArgs[i] != null)
          {
            localObject2 = paramVarArgs[i].getClass();
            arrayOfClass[i] = localObject2;
            i++;
          }
        }
        else {
          return arrayOfClass;
        }
      }
      finally {}
      Object localObject2 = Object.class;
    }
  }
  
  private void reconnect()
  {
    this.wasPlaying_intf = false;
    this.wasPlaying_broadcasted = false;
    this.availableIntf = -1;
    this.remoteIntfFailed = true;
  }
  
  private boolean remote_isPlaying()
  {
    return remote_isPlaying(false);
  }
  
  private boolean remote_isPlaying(boolean paramBoolean)
  {
    if (hasBadRemoteInterface_blacklisted()) {
      return false;
    }
    Object localObject = invoke(this.mGenericService, "isPlaying", new Object[0]);
    if (localObject != null) {}
    for (boolean bool = ((Boolean)localObject).booleanValue();; bool = false) {
      return bool;
    }
  }
  
  private void sendPlayerBroadcastAlt(int paramInt)
  {
    SoundFactory.log(3, TAG, "publishing media source controlling broadcast...");
    Intent localIntent = new Intent("android.intent.action.MEDIA_BUTTON");
    localIntent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, 85));
    this.context.sendStickyOrderedBroadcast(localIntent, this.dummyMusicServiceReceiver, null, -1, null, null);
    localIntent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(1, 85));
    this.context.sendStickyOrderedBroadcast(localIntent, this.dummyMusicServiceReceiver, null, -1, null, null);
  }
  
  private void sendPlayerCommand(int paramInt)
  {
    if ((-1 == this.availableIntf) || (3 == paramInt)) {}
    String str;
    do
    {
      return;
      str = ((String[])((Pair)maintainableServicesList.get(this.availableIntf)).first)[paramInt];
    } while ((str == null) || (str.length() == 0));
    SoundFactory.log(3, TAG, "sendPlayerCommand(" + paramInt + "/cmd:" + str + ")");
    ComponentName localComponentName = new ComponentName(((String[])((Pair)maintainableServicesList.get(this.availableIntf)).first)[0], ((String[])((Pair)maintainableServicesList.get(this.availableIntf)).first)[1]);
    Intent localIntent = new Intent(str);
    localIntent.setComponent(localComponentName);
    try
    {
      this.context.startService(localIntent);
      return;
    }
    catch (Exception localException)
    {
      sendPlayerBroadcastAlt(paramInt);
    }
  }
  
  protected void finalize()
  {
    this.context.unregisterReceiver(this.dummyMusicServiceReceiver);
    super.finalize();
  }
  
  public Object invoke(IInterface paramIInterface, String paramString, Object... paramVarArgs)
  {
    Method localMethod = findMethodDecl(paramIInterface, paramString, paramVarArgs);
    if (localMethod == null) {
      return null;
    }
    localMethod.setAccessible(true);
    try
    {
      Object localObject = localMethod.invoke(paramIInterface, paramVarArgs);
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
    }
    return null;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (-1 == this.availableIntf) {
      SoundFactory.log(3, TAG, "media service replies with connection, but don't know which interface to use");
    }
    for (;;)
    {
      return;
      try
      {
        Pair localPair = (Pair)maintainableServicesList.get(this.availableIntf);
        if (com.b.a.b.class.equals(localPair.second))
        {
          this.mGenericService = com.b.a.b.a(paramIBinder);
          return;
        }
        if (com.android.music.b.class.equals(localPair.second))
        {
          this.mGenericService = com.android.music.b.a(paramIBinder);
          return;
        }
        if (com.android.music.player.a.b.class.equals(localPair.second))
        {
          this.mGenericService = com.android.music.player.a.b.a(paramIBinder);
          return;
        }
      }
      catch (Exception localException) {}
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    this.mGenericService = null;
    reconnect();
  }
  
  public void processPhoneStateChange(int paramInt)
  {
    switch (paramInt)
    {
    case 1: 
    default: 
      if (!this.mm_interrupted) {
        break;
      }
    case 0: 
    case 2: 
    case 3: 
      do
      {
        return;
        if ((this.mm_interrupted) && (!hasBadRemoteInterface_blacklisted())) {}
        this.mm_interrupted = false;
        return;
      } while (this.soundService.getBluetoothCtl().isHeadsetConnected());
      this.context.sendBroadcast(new Intent("android.media.AUDIO_BECOMING_NOISY"));
      return;
    }
    this.wasPlaying_intf = remote_isPlaying();
    if ((this.wasPlaying_broadcasted) || (this.guessControlIsBroadcastOnly) || ((!isServiceAccessible(this.mGenericService, this.availableIntf)) && (!hasBadRemoteInterface_blacklisted())) || (!this.wasPlaying_intf)) {}
    for (;;)
    {
      if (!this.soundService.getBluetoothCtl().isHeadsetConnected()) {
        this.context.sendBroadcast(new Intent("android.media.AUDIO_BECOMING_NOISY"));
      }
      this.mm_interrupted = true;
      return;
      sendPlayerCommand(2);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.MMControl
 * JD-Core Version:    0.7.0.1
 */