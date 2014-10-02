package com.viber.voip.sound;

import android.app.Activity;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.viber.jni.CMissedCall;
import com.viber.jni.dialer.DialerControllerDelegate.DialerCallback;
import com.viber.jni.dialer.DialerControllerDelegate.DialerEndScreen;
import com.viber.jni.dialer.DialerControllerDelegate.DialerHoldState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerIncomingScreen;
import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerMuteState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerOutgoingScreen;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerRemoteCallState;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.bluetooth.BTControl;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Semaphore;

public class SoundServiceThreadSafeDelegate
  extends AbstractSoundService
  implements DialerControllerDelegate.DialerCallback, DialerControllerDelegate.DialerEndScreen, DialerControllerDelegate.DialerHoldState, DialerControllerDelegate.DialerIncomingScreen, DialerControllerDelegate.DialerLocalCallState, DialerControllerDelegate.DialerMuteState, DialerControllerDelegate.DialerOutgoingScreen, DialerControllerDelegate.DialerPhoneState, DialerControllerDelegate.DialerRemoteCallState
{
  private static final String DELEGATE_HANDLER_NAME = "SoundService handler thread";
  public static final String TAG = SoundServiceThreadSafeDelegate.class.getSimpleName();
  private static final boolean USE_OWN_HANDLER_THREAD;
  private static final SoundServiceThreadSafeDelegate.DelegateHandlerThread delegateHandlerThread = (SoundServiceThreadSafeDelegate.DelegateHandlerThread)null;
  private static final Handler mainHandler = new SoundServiceThreadSafeDelegate.DelegateHandler(delegateHandlerThread.getLooper());
  private final HashMap<String, SoundServiceThreadSafeDelegate.MethodDescriptor<SoundServiceThreadSafeDelegate.MethodDecl>> methodMap = new HashMap(AbstractSoundService.class.getMethods().length);
  private final ISoundService parentSoundService;
  
  protected SoundServiceThreadSafeDelegate(ISoundService paramISoundService)
  {
    this.parentSoundService = paramISoundService;
    Method[] arrayOfMethod = paramISoundService.getClass().getMethods();
    for (int i = 0; i < arrayOfMethod.length; i++)
    {
      SoundServiceThreadSafeDelegate.MethodDescriptor localMethodDescriptor = (SoundServiceThreadSafeDelegate.MethodDescriptor)this.methodMap.get(arrayOfMethod[i].getName());
      if (localMethodDescriptor == null)
      {
        localMethodDescriptor = new SoundServiceThreadSafeDelegate.MethodDescriptor(this, arrayOfMethod[i].getName());
        this.methodMap.put(arrayOfMethod[i].getName(), localMethodDescriptor);
      }
      localMethodDescriptor.override(new SoundServiceThreadSafeDelegate.MethodDecl(this, arrayOfMethod[i].getName(), arrayOfMethod[i], arrayOfMethod[i].getParameterTypes()));
    }
  }
  
  private boolean _boolean(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    try
    {
      boolean bool = ((Boolean)paramObject).booleanValue();
      return bool;
    }
    catch (ClassCastException localClassCastException) {}
    return false;
  }
  
  private int _int(Object paramObject)
  {
    if (paramObject == null) {
      return 0;
    }
    try
    {
      int i = ((Integer)paramObject).intValue();
      return i;
    }
    catch (ClassCastException localClassCastException) {}
    return 0;
  }
  
  private String _string(Object paramObject)
  {
    try
    {
      String str = (String)paramObject;
      return str;
    }
    catch (ClassCastException localClassCastException) {}
    return null;
  }
  
  private Method findMethod(Object paramObject, String paramString, Object... paramVarArgs)
  {
    SoundServiceThreadSafeDelegate.MethodDecl localMethodDecl = findMethodDecl(paramObject, paramString, paramVarArgs);
    if (localMethodDecl == null) {
      return null;
    }
    return localMethodDecl.method;
  }
  
  private SoundServiceThreadSafeDelegate.MethodDecl findMethodDecl(Object paramObject, String paramString, Object... paramVarArgs)
  {
    Class[] arrayOfClass = objectToClassMap(paramVarArgs);
    SoundServiceThreadSafeDelegate.MethodDescriptor localMethodDescriptor = (SoundServiceThreadSafeDelegate.MethodDescriptor)this.methodMap.get(paramString);
    if (localMethodDescriptor == null) {
      return null;
    }
    Collection localCollection = localMethodDescriptor.getCallables();
    SoundServiceThreadSafeDelegate.MethodDecl localMethodDecl;
    if (localCollection != null)
    {
      Iterator localIterator = localCollection.iterator();
      localMethodDecl = null;
      while (localIterator.hasNext())
      {
        localMethodDecl = (SoundServiceThreadSafeDelegate.MethodDecl)localIterator.next();
        if (arrayOfClass.length != localMethodDecl.parmDecl.length)
        {
          localMethodDecl = null;
        }
        else
        {
          int i = 0;
          for (;;)
          {
            if (i >= arrayOfClass.length) {
              break label207;
            }
            try
            {
              arrayOfClass[i].asSubclass(localMethodDecl.parmDecl[i]);
              i++;
            }
            catch (ClassCastException localClassCastException)
            {
              if (!localMethodDecl.parmDecl[i].isPrimitive()) {
                break label215;
              }
            }
          }
          if ((arrayOfClass[i].isPrimitive()) || (((!Integer.class.equals(arrayOfClass[i])) || (!Integer.TYPE.equals(localMethodDecl.parmDecl[i]))) && (!arrayOfClass[i].getSimpleName().equalsIgnoreCase(localMethodDecl.parmDecl[i].getSimpleName())))) {
            break label215;
          }
          label207:
          if (localMethodDecl == null) {
            break label219;
          }
        }
      }
    }
    for (;;)
    {
      return localMethodDecl;
      label215:
      localMethodDecl = null;
      break label207;
      label219:
      break;
      localMethodDecl = null;
    }
  }
  
  public static String getSignature(String paramString, Class<?>[] paramArrayOfClass)
  {
    for (;;)
    {
      StringBuilder localStringBuilder;
      int i;
      try
      {
        localStringBuilder = new StringBuilder(paramString).append("(");
        i = 0;
        if (i >= paramArrayOfClass.length) {
          break label256;
        }
        if (Integer.TYPE.equals(paramArrayOfClass[i])) {
          localStringBuilder.append("I");
        } else if (Long.TYPE.equals(paramArrayOfClass[i])) {
          localStringBuilder.append("J");
        }
      }
      finally {}
      if (Boolean.TYPE.equals(paramArrayOfClass[i]))
      {
        localStringBuilder.append("Z");
      }
      else if (Void.class.equals(paramArrayOfClass[i]))
      {
        localStringBuilder.append("V");
      }
      else if (Double.TYPE.equals(paramArrayOfClass[i]))
      {
        localStringBuilder.append("D");
      }
      else if (Float.TYPE.equals(paramArrayOfClass[i]))
      {
        localStringBuilder.append("F");
      }
      else if (paramArrayOfClass[i].isArray())
      {
        localStringBuilder.append("L[" + paramArrayOfClass[i].getCanonicalName() + ";");
      }
      else
      {
        localStringBuilder.append("L" + paramArrayOfClass[i].getCanonicalName() + ";");
        break label273;
        label256:
        String str = ")";
        return str;
      }
      label273:
      i++;
    }
  }
  
  public static String getSignature(String paramString, Object... paramVarArgs)
  {
    Class[] arrayOfClass = new Class[paramVarArgs.length];
    for (int i = 0; i < arrayOfClass.length; i++) {
      arrayOfClass[i] = paramVarArgs[i].getClass();
    }
    return getSignature(paramString, arrayOfClass);
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
  
  public boolean IsGSMCallActive()
  {
    return _boolean(invokeForResult(this.parentSoundService, "IsGSMCallActive", new Object[0]));
  }
  
  public ViberApplication getApplicationContext()
  {
    return (ViberApplication)invokeForResult(this.parentSoundService, "getApplicationContext", new Object[0]);
  }
  
  public int getAudioCtl(int paramInt1, int paramInt2, int paramInt3)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    return _int(invokeForResult(localISoundService, "getAudioCtl", arrayOfObject));
  }
  
  public ISoundService.IAudioSettings getAudioSettings(ISoundService.AudioModeCtl paramAudioModeCtl)
  {
    return (ISoundService.IAudioSettings)invokeForResult(this.parentSoundService, "getAudioSettings", new Object[] { paramAudioModeCtl });
  }
  
  public BTControl getBluetoothCtl()
  {
    return (BTControl)invokeForResult(this.parentSoundService, "getBluetoothCtl", new Object[0]);
  }
  
  public Context getContext()
  {
    return (Context)invokeForResult(this.parentSoundService, "getContext", new Object[0]);
  }
  
  public Handler getHandler()
  {
    return (Handler)invokeForResult(this.parentSoundService, "getHandler", new Object[0]);
  }
  
  public MediaPlayer getMediaPlayer()
  {
    return (MediaPlayer)invokeForResult(this.parentSoundService, "getMediaPlayer", new Object[0]);
  }
  
  public int getMode()
  {
    return _int(invokeForResult(this.parentSoundService, "getMode", new Object[0]));
  }
  
  public AudioManager getPlatformAudioManager()
  {
    return (AudioManager)invokeForResult(this.parentSoundService, "getPlatformAudioManager", new Object[0]);
  }
  
  public int getRingerMode()
  {
    return _int(invokeForResult(this.parentSoundService, "getRingerMode", new Object[0]));
  }
  
  public IRingtoneService.Ringtone getRingtone(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = Boolean.valueOf(paramBoolean1);
    arrayOfObject[2] = Boolean.valueOf(paramBoolean2);
    return (IRingtoneService.Ringtone)invokeForResult(localISoundService, "getRingtone", arrayOfObject);
  }
  
  public IRingtoneService.Ringtone getRingtone(Uri paramUri)
  {
    return (IRingtoneService.Ringtone)invokeForResult(this.parentSoundService, "getRingtone", new Object[] { paramUri });
  }
  
  public IRingtoneService.Ringtone getRingtone(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramUri;
    arrayOfObject[1] = Boolean.valueOf(paramBoolean1);
    arrayOfObject[2] = Boolean.valueOf(paramBoolean2);
    return (IRingtoneService.Ringtone)invokeForResult(localISoundService, "getRingtone", arrayOfObject);
  }
  
  public IRingtoneService getRingtoneService()
  {
    return (IRingtoneService)invokeForResult(this.parentSoundService, "getRingtoneService", new Object[0]);
  }
  
  public int getStreamMaxVolume(int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return _int(invokeForResult(localISoundService, "getStreamMaxVolume", arrayOfObject));
  }
  
  public int getStreamVolume(int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return _int(invokeForResult(localISoundService, "getStreamVolume", arrayOfObject));
  }
  
  public int getThreadPriority()
  {
    return _int(invokeForResult(this.parentSoundService, "getThreadPriority", new Object[0]));
  }
  
  public IVibratorService getVibratorService()
  {
    return (IVibratorService)invokeForResult(this.parentSoundService, "getVibratorService", new Object[0]);
  }
  
  public int getVocoderCtl(ISoundService.VocoderCtl paramVocoderCtl, int paramInt1, int paramInt2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramVocoderCtl;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    return _int(invokeForResult(localISoundService, "getVocoderCtl", arrayOfObject));
  }
  
  public ISoundService.IVocoderSettings getVocoderSettings()
  {
    return (ISoundService.IVocoderSettings)invokeForResult(this.parentSoundService, "getVocoderSettings", new Object[0]);
  }
  
  public String getVoiceStatsString()
  {
    return _string(invokeForResult(this.parentSoundService, "getVoiceStatsString", new Object[0]));
  }
  
  public void hideCall(String paramString, boolean paramBoolean)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Boolean.valueOf(paramBoolean);
    invoke(localISoundService, "hideCall", arrayOfObject);
  }
  
  public void hideCallBack()
  {
    invoke(this.parentSoundService, "hideCallBack", (Object[])null);
  }
  
  public void hideEndCall()
  {
    invoke(this.parentSoundService, "hideEndCall", (Object[])null);
  }
  
  public void hideReception()
  {
    invoke(this.parentSoundService, "hideReception", (Object[])null);
  }
  
  public void invoke(ISoundService paramISoundService, SoundServiceThreadSafeDelegate.MethodDecl paramMethodDecl, Object... paramVarArgs)
  {
    if (paramMethodDecl.parmDecl == null) {
      new Class[0];
    }
    Method localMethod = findMethod(paramISoundService, paramMethodDecl.methodName, paramVarArgs);
    if (localMethod == null) {}
    try
    {
      throw new NoSuchMethodException();
    }
    catch (SecurityException localSecurityException)
    {
      localSecurityException.printStackTrace();
      return;
      localMethod.invoke(paramISoundService, new Object[] { localMethod, paramVarArgs });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
    }
  }
  
  public void invoke(ISoundService paramISoundService, String paramString, Object... paramVarArgs)
  {
    invoke(paramISoundService, findMethod(paramISoundService, paramString, paramVarArgs), paramVarArgs);
  }
  
  public void invoke(ISoundService paramISoundService, Method paramMethod, Object... paramVarArgs)
  {
    invokeForResult(paramISoundService, paramMethod, paramVarArgs);
  }
  
  public Object invokeForResult(ISoundService paramISoundService, SoundServiceThreadSafeDelegate.MethodDecl paramMethodDecl, Object... paramVarArgs)
  {
    Class[] arrayOfClass = paramMethodDecl.parmDecl;
    if (arrayOfClass == null) {
      arrayOfClass = new Class[0];
    }
    try
    {
      Object localObject = invokeForResult(paramISoundService, paramISoundService.getClass().getDeclaredMethod(paramMethodDecl.methodName, arrayOfClass), paramVarArgs);
      return localObject;
    }
    catch (SecurityException localSecurityException)
    {
      localSecurityException.printStackTrace();
      return null;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        localNoSuchMethodException.printStackTrace();
      }
    }
  }
  
  public Object invokeForResult(ISoundService paramISoundService, String paramString, Object... paramVarArgs)
  {
    return invokeForResult(paramISoundService, findMethod(paramISoundService, paramString, paramVarArgs), paramVarArgs);
  }
  
  public Object invokeForResult(ISoundService paramISoundService, Method paramMethod, Object... paramVarArgs)
  {
    int i = 1;
    Object[] arrayOfObject = new Object[i];
    arrayOfObject[0] = null;
    for (;;)
    {
      try
      {
        Semaphore localSemaphore;
        SoundServiceThreadSafeDelegate.1 local1;
        if ((Thread.currentThread() == mainHandler.getLooper().getThread()) || (Thread.currentThread().getThreadGroup() == mainHandler.getLooper().getThread().getThreadGroup()))
        {
          if (i == 0)
          {
            localSemaphore = new Semaphore(0);
            local1 = new SoundServiceThreadSafeDelegate.1(this, paramMethod, paramISoundService, arrayOfObject, paramVarArgs, localSemaphore);
          }
        }
        else
        {
          try
          {
            mainHandler.post(local1);
            localSemaphore.acquireUninterruptibly();
            return arrayOfObject[0];
          }
          finally {}
          i = 0;
          continue;
        }
        try
        {
          arrayOfObject[0] = paramMethod.invoke(paramISoundService, paramVarArgs);
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          localIllegalArgumentException.printStackTrace();
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          localIllegalAccessException.printStackTrace();
        }
        catch (InvocationTargetException localInvocationTargetException)
        {
          localInvocationTargetException.printStackTrace();
        }
      }
      finally {}
    }
  }
  
  public boolean isBluetoothScoOn()
  {
    return _boolean(invokeForResult(this.parentSoundService, "isBluetoothScoOn", new Object[0]));
  }
  
  public boolean isHeadsetPluggedIn()
  {
    return _boolean(invokeForResult(this.parentSoundService, "isHeadsetPluggedIn", new Object[0]));
  }
  
  public boolean isMediaPlayerPlaying()
  {
    return _boolean(invokeForResult(this.parentSoundService, "isMediaPlayerPlaying", new Object[0]));
  }
  
  public boolean isMicrophoneMute()
  {
    return _boolean(invokeForResult(this.parentSoundService, "isMicrophoneMute", new Object[0]));
  }
  
  public boolean isOnHold()
  {
    return _boolean(invokeForResult(this.parentSoundService, "isOnHold", new Object[0]));
  }
  
  public boolean isPeerOnHold()
  {
    return _boolean(invokeForResult(this.parentSoundService, "isPeerOnHold", new Object[0]));
  }
  
  public boolean isRingtonePlaying()
  {
    return _boolean(invokeForResult(this.parentSoundService, "isRingtonePlaying", new Object[0]));
  }
  
  public boolean isRouteActive(int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return _boolean(invokeForResult(localISoundService, "isRouteActive", arrayOfObject));
  }
  
  public boolean isSpeakerphoneAllowed()
  {
    return _boolean(invokeForResult(this.parentSoundService, "isSpeakerphoneAllowed", new Object[0]));
  }
  
  public boolean isSpeakerphoneOn()
  {
    return _boolean(invokeForResult(this.parentSoundService, "isSpeakerphoneOn", new Object[0]));
  }
  
  public void loadAudioResource(int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    invoke(localISoundService, "loadAudioResource", arrayOfObject);
  }
  
  public void loadSample(int paramInt1, int paramInt2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    invoke(localISoundService, "loadSample", arrayOfObject);
  }
  
  public void loadSamples(int[] paramArrayOfInt)
  {
    invoke(this.parentSoundService, "loadSamples", new Object[] { paramArrayOfInt });
  }
  
  public void localHold()
  {
    invoke(this.parentSoundService, "localHold", new Object[0]);
  }
  
  public void localUnhold()
  {
    invoke(this.parentSoundService, "localUnhold", new Object[0]);
  }
  
  public int mode_Dtmf()
  {
    return _int(invokeForResult(this.parentSoundService, "mode_Dtmf", new Object[0]));
  }
  
  public int mode_InCall()
  {
    return _int(invokeForResult(this.parentSoundService, "mode_InCall", new Object[0]));
  }
  
  public int mode_Mic_InCall()
  {
    return _int(invokeForResult(this.parentSoundService, "mode_Mic_InCall", new Object[0]));
  }
  
  public int mode_Normal()
  {
    return _int(invokeForResult(this.parentSoundService, "mode_Normal", new Object[0]));
  }
  
  public int mode_Ringtone()
  {
    return _int(invokeForResult(this.parentSoundService, "mode_Ringtone", new Object[0]));
  }
  
  public int mode_Tone()
  {
    return _int(invokeForResult(this.parentSoundService, "mode_Tone", new Object[0]));
  }
  
  public void mute()
  {
    invoke(this.parentSoundService, "mute", new Object[0]);
  }
  
  public void onAnswerButtonClick()
  {
    invoke(this.parentSoundService, "onAnswerButtonClick", new Object[0]);
  }
  
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = Long.valueOf(paramLong);
    arrayOfObject[1] = Boolean.valueOf(paramBoolean);
    arrayOfObject[2] = paramString;
    arrayOfObject[3] = Integer.valueOf(paramInt1);
    arrayOfObject[4] = Integer.valueOf(paramInt2);
    invoke(localISoundService, "onCallEnded", arrayOfObject);
  }
  
  public void onCallMissed(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = Long.valueOf(paramLong);
    arrayOfObject[1] = paramString1;
    arrayOfObject[2] = Integer.valueOf(paramInt1);
    arrayOfObject[3] = Integer.valueOf(paramInt2);
    arrayOfObject[4] = paramString2;
    invoke(localISoundService, "onCallMissed", arrayOfObject);
  }
  
  public void onCallStarted(boolean paramBoolean)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    invoke(localISoundService, "onCallStarted", arrayOfObject);
  }
  
  public void onDebugInfo(int paramInt, String paramString1, String paramString2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = paramString1;
    arrayOfObject[2] = paramString2;
    invoke(localISoundService, "onDebugInfo", arrayOfObject);
  }
  
  public void onDeviceConnected(BluetoothDevice paramBluetoothDevice)
  {
    invoke(this.parentSoundService, "onDeviceConnected", new Object[] { paramBluetoothDevice });
  }
  
  public void onDeviceDisconnected(BluetoothDevice paramBluetoothDevice)
  {
    invoke(this.parentSoundService, "onDeviceDisconnected", new Object[] { paramBluetoothDevice });
  }
  
  public void onError(BluetoothDevice paramBluetoothDevice)
  {
    invoke(this.parentSoundService, "onError", new Object[] { paramBluetoothDevice });
  }
  
  public void onGSMStateChange(int paramInt, String paramString)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = paramString;
    invoke(localISoundService, "onGSMStateChange", arrayOfObject);
  }
  
  public boolean onGetMissedCalls(CMissedCall[] paramArrayOfCMissedCall)
  {
    return _boolean(invokeForResult(this.parentSoundService, "onGetMissedCalls", new Object[] { paramArrayOfCMissedCall }));
  }
  
  public boolean onHandsetOffCallDisabled()
  {
    return _boolean(invokeForResult(this.parentSoundService, "onHandsetOffCallDisabled", new Object[0]));
  }
  
  public boolean onHandsetOffCallEnabled()
  {
    return _boolean(invokeForResult(this.parentSoundService, "onHandsetOffCallEnabled", new Object[0]));
  }
  
  public void onHangup()
  {
    invoke(this.parentSoundService, "onHangup", (Object[])null);
  }
  
  public void onIsRegistered(int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    invoke(localISoundService, "onIsRegistered", arrayOfObject);
  }
  
  public void onIsRegisteredNumber(String paramString, int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    invoke(localISoundService, "onIsRegisteredNumber", arrayOfObject);
  }
  
  public void onLBServerTime(long paramLong)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    invoke(localISoundService, "onLBServerTime", arrayOfObject);
  }
  
  public void onPeerBusy()
  {
    invoke(this.parentSoundService, "onPeerBusy", (Object[])null);
  }
  
  public void onPeerCapabilities(int paramInt) {}
  
  public void onPeerRinging()
  {
    invoke(this.parentSoundService, "onPeerRinging", new Object[0]);
  }
  
  public void onPhoneStateChanged(int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    invoke(localISoundService, "onPhoneStateChanged", arrayOfObject);
  }
  
  public void onSendTextReply(int paramInt1, long paramLong, int paramInt2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Long.valueOf(paramLong);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    invoke(localISoundService, "onSendTextReply", arrayOfObject);
  }
  
  public void onShareAddressBook()
  {
    invoke(this.parentSoundService, "onShareAddressBook", (Object[])null);
  }
  
  public void onShareAddressBookDone(boolean paramBoolean)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    invoke(localISoundService, "onShareAddressBookDone", arrayOfObject);
  }
  
  public void onShouldRegister()
  {
    invoke(this.parentSoundService, "onShouldRegister", new Object[0]);
  }
  
  public void onSignal(String paramString, int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    invoke(localISoundService, "onSignal", arrayOfObject);
  }
  
  public void onStartRingback(String paramString)
  {
    invoke(this.parentSoundService, "onStartRingback", new Object[] { paramString });
  }
  
  public void onTextDelivered(long paramLong1, long paramLong2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(paramLong1);
    arrayOfObject[1] = Long.valueOf(paramLong2);
    invoke(localISoundService, "onTextDelivered", arrayOfObject);
  }
  
  public void onVoiceChannelStateChange(boolean paramBoolean)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    invoke(localISoundService, "onVoiceChannelStateChange", arrayOfObject);
  }
  
  public void peerHold()
  {
    invoke(this.parentSoundService, "peerHold", new Object[0]);
  }
  
  public void peerUnhold()
  {
    invoke(this.parentSoundService, "peerUnhold", new Object[0]);
  }
  
  public void playDTMFTone(int paramInt1, int paramInt2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    invoke(localISoundService, "playDTMFTone", arrayOfObject);
  }
  
  public void playMessageNotification(IRingtoneService.Ringtone paramRingtone)
  {
    invoke(this.parentSoundService, "playMessageNotification", new Object[0]);
  }
  
  public void playRingtone(Uri paramUri)
  {
    invoke(this.parentSoundService, "playRingtone", new Object[0]);
  }
  
  public void playRingtone(IRingtoneService.Ringtone paramRingtone)
  {
    invoke(this.parentSoundService, "playRingtone", new Object[0]);
  }
  
  public void playSample(int paramInt1, float paramFloat1, float paramFloat2, int paramInt2, int paramInt3, float paramFloat3)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Float.valueOf(paramFloat1);
    arrayOfObject[2] = Float.valueOf(paramFloat2);
    arrayOfObject[3] = Integer.valueOf(paramInt2);
    arrayOfObject[4] = Integer.valueOf(paramInt3);
    arrayOfObject[5] = Float.valueOf(paramFloat3);
    invoke(localISoundService, "playSample", arrayOfObject);
  }
  
  public void playTone(int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    invoke(localISoundService, "playTone", arrayOfObject);
  }
  
  public void playTone(ToneGeneratorFactory.ToneType paramToneType)
  {
    invoke(this.parentSoundService, "playTone", new Object[] { paramToneType });
  }
  
  public void registerSpeakerStateListener(ISoundService.SpeakerStateListener paramSpeakerStateListener)
  {
    invoke(this.parentSoundService, "registerSpeakerStateListener", new Object[] { paramSpeakerStateListener });
  }
  
  public void registerVoiceStateListener(VoiceStateListener paramVoiceStateListener)
  {
    invoke(this.parentSoundService, "registerVoiceStateListener", new Object[] { paramVoiceStateListener });
  }
  
  public void registerVolumeChangeListener(ISoundService.VolumeChangeListenerIntf paramVolumeChangeListenerIntf)
  {
    invoke(this.parentSoundService, "registerVolumeChangeListener", new Object[] { paramVolumeChangeListenerIntf });
  }
  
  public final boolean rejectSpeakerActiveState()
  {
    return _boolean(invokeForResult(this.parentSoundService, "rejectSpeakerActiveState", new Object[0]));
  }
  
  public boolean rejectSpeakerStateChangeWithHeadset()
  {
    return _boolean(invokeForResult(this.parentSoundService, "rejectSpeakerStateChangeWithHeadset", new Object[0]));
  }
  
  public void releaseMediaPlayer()
  {
    invoke(this.parentSoundService, "releaseMediaPlayer", new Object[0]);
  }
  
  public int setAudioCtl(int paramInt1, int paramInt2, int paramInt3)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    return _int(invokeForResult(localISoundService, "setAudioCtl", arrayOfObject));
  }
  
  public void setBluetoothScoOn(boolean paramBoolean)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    invoke(localISoundService, "setBluetoothScoOn", arrayOfObject);
  }
  
  public void setMicrophoneMute(boolean paramBoolean)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    invoke(localISoundService, "setMicrophoneMute", arrayOfObject);
  }
  
  public void setMode(int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    invoke(localISoundService, "setMode", arrayOfObject);
  }
  
  public void setMode(int paramInt, ISoundService.ModeStateListenerIntf paramModeStateListenerIntf)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = paramModeStateListenerIntf;
    invoke(localISoundService, "setMode", arrayOfObject);
  }
  
  public void setSpeakerphoneOn(boolean paramBoolean)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    invoke(localISoundService, "setSpeakerphoneOn", arrayOfObject);
  }
  
  public int setVocoderCtl(ISoundService.VocoderCtl paramVocoderCtl, int paramInt1, int paramInt2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramVocoderCtl;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    return _int(invokeForResult(localISoundService, "setVocoderCtl", arrayOfObject));
  }
  
  public boolean shouldAutoAnswer()
  {
    return _boolean(invokeForResult(this.parentSoundService, "shouldAutoAnswer", new Object[0]));
  }
  
  public boolean shouldKillMediaManagerOnSuspend()
  {
    return _boolean(invokeForResult(this.parentSoundService, "shouldKillMediaManagerOnSuspend", new Object[0]));
  }
  
  public boolean shouldVibrate(int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return _boolean(invokeForResult(localISoundService, "shouldVibrate", arrayOfObject));
  }
  
  public void showCall(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Boolean.valueOf(paramBoolean1);
    invoke(localISoundService, "showCall", arrayOfObject);
  }
  
  public void showCallBack(int paramInt1, int paramInt2)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    invoke(localISoundService, "showCallBack", arrayOfObject);
  }
  
  public void showDialog(int paramInt, String paramString) {}
  
  public void showEndCall()
  {
    invoke(this.parentSoundService, "showEndCall", (Object[])null);
  }
  
  public void showReception(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    ISoundService localISoundService = this.parentSoundService;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Integer.valueOf(paramInt);
    invoke(localISoundService, "showReception", arrayOfObject);
  }
  
  public void startMediaPlayer()
  {
    invoke(this.parentSoundService, "startMediaPlayer", new Object[0]);
  }
  
  public void stopAllTones()
  {
    invoke(this.parentSoundService, "stopAllTones", new Object[0]);
  }
  
  public void stopDTMFTone()
  {
    invoke(this.parentSoundService, "stopDTMFTone", new Object[0]);
  }
  
  public void stopMediaPlayer()
  {
    invoke(this.parentSoundService, "stopMediaPlayer", new Object[0]);
  }
  
  public void stopRingtone(IRingtoneService.Ringtone paramRingtone)
  {
    invoke(this.parentSoundService, "stopRingtone", new Object[] { paramRingtone });
  }
  
  public boolean stopRingtone()
  {
    return _boolean(invokeForResult(this.parentSoundService, "stopRingtone", new Object[0]));
  }
  
  public void stopTone()
  {
    invoke(this.parentSoundService, "stopTone", new Object[0]);
  }
  
  public int stream_Dtmf()
  {
    return _int(invokeForResult(this.parentSoundService, "stream_Dtmf", new Object[0]));
  }
  
  public int stream_Notification()
  {
    return _int(invokeForResult(this.parentSoundService, "stream_Notification", new Object[0]));
  }
  
  public int stream_Ring()
  {
    return _int(invokeForResult(this.parentSoundService, "stream_Ring", new Object[0]));
  }
  
  public int stream_Tone()
  {
    return _int(invokeForResult(this.parentSoundService, "stream_Tone", new Object[0]));
  }
  
  public int stream_Voice()
  {
    return _int(invokeForResult(this.parentSoundService, "stream_Voice", new Object[0]));
  }
  
  public boolean suspendNativeOnLocalHold()
  {
    return _boolean(invokeForResult(this.parentSoundService, "suspendNativeOnLocalHold", new Object[0]));
  }
  
  public boolean suspendNativeOnParallelGSM()
  {
    return _boolean(invokeForResult(this.parentSoundService, "suspendNativeOnParallelGSM", new Object[0]));
  }
  
  public boolean suspendNativeOnPeerHold()
  {
    return _boolean(invokeForResult(this.parentSoundService, "suspendNativeOnPeerHold", new Object[0]));
  }
  
  public void switchToGSM(String paramString)
  {
    invoke(this.parentSoundService, "switchToGSM", new Object[] { paramString });
  }
  
  public void syncSpeakerState()
  {
    invoke(this.parentSoundService, "syncSpeakerState", new Object[0]);
  }
  
  public void trackActivity(Activity paramActivity)
  {
    invoke(this.parentSoundService, "trackActivity", new Object[] { paramActivity });
  }
  
  public void unmute()
  {
    invoke(this.parentSoundService, "unmute", new Object[0]);
  }
  
  public void unregisterSpeakerStateListener(ISoundService.SpeakerStateListener paramSpeakerStateListener)
  {
    invoke(this.parentSoundService, "unregisterSpeakerStateListener", new Object[] { paramSpeakerStateListener });
  }
  
  public void unregisterVoiceStateListener(VoiceStateListener paramVoiceStateListener)
  {
    invoke(this.parentSoundService, "unregisterVoiceStateListener", new Object[] { paramVoiceStateListener });
  }
  
  public void unregisterVolumeChangeListener(ISoundService.VolumeChangeListenerIntf paramVolumeChangeListenerIntf)
  {
    invoke(this.parentSoundService, "unregisterVolumeChangeListener", new Object[] { paramVolumeChangeListenerIntf });
  }
  
  public boolean useExtraBtChecksForModeChangeWorkaround()
  {
    return _boolean(invokeForResult(this.parentSoundService, "useExtraBtChecksForModeChangeWorkaround", new Object[0]));
  }
  
  public boolean useModeLocking()
  {
    return _boolean(invokeForResult(this.parentSoundService, "useModeLocking", new Object[0]));
  }
  
  public boolean useModeSwitchForSpeakerToggleWorkaround()
  {
    return _boolean(invokeForResult(this.parentSoundService, "useModeSwitchForSpeakerToggleWorkaround", new Object[0]));
  }
  
  public boolean useNativeMuteControl()
  {
    return _boolean(invokeForResult(this.parentSoundService, "useNativeMuteControl", new Object[0]));
  }
  
  public boolean useNativeResetOnSpeakerToggle()
  {
    return _boolean(invokeForResult(this.parentSoundService, "useNativeResetOnSpeakerToggle", new Object[0]));
  }
  
  public boolean useNativeSoundLibSpeakerControl()
  {
    return _boolean(invokeForResult(this.parentSoundService, "useNativeSoundLibSpeakerControl", new Object[0]));
  }
  
  public boolean useSpeakerResetForModeChangeWorkaround()
  {
    return _boolean(invokeForResult(this.parentSoundService, "useSpeakerResetForModeChangeWorkaround", new Object[0]));
  }
  
  public boolean useThreadPriority()
  {
    return _boolean(invokeForResult(this.parentSoundService, "useThreadPriority", new Object[0]));
  }
  
  public boolean useVoiceChannelListeners()
  {
    return _boolean(invokeForResult(this.parentSoundService, "useVoiceChannelListeners", new Object[0]));
  }
  
  public boolean useVolumeBoostForTonesInSpeakerMode()
  {
    return _boolean(invokeForResult(this.parentSoundService, "useVolumeBoostForTonesInSpeakerMode", new Object[0]));
  }
  
  public boolean useVolumeQuirks()
  {
    return _boolean(invokeForResult(this.parentSoundService, "useVolumeQuirks", new Object[0]));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.SoundServiceThreadSafeDelegate
 * JD-Core Version:    0.7.0.1
 */