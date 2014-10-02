package com.viber.voip.sound;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.SystemClock;
import com.viber.jni.DeviceFlags;
import com.viber.jni.DeviceFlags.DeviceModes;
import com.viber.jni.PhoneControllerListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerControllerDelegate.DialerHoldState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;
import com.viber.jni.dialer.DialerHoldStateListener;
import com.viber.jni.dialer.DialerLocalCallStateListener;
import com.viber.jni.dialer.DialerPhoneStateListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.quirks.GalaxySFamilySoundService;
import com.viber.voip.sound.quirks.LGOptimusSoundService;
import com.viber.voip.sound.quirks.MilestoneFamilySoundService;
import com.viber.voip.sound.quirks.ModeInCallGenericSoundService;
import com.viber.voip.sound.quirks.ModeNormalGenericSoundService;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class SoundFactory
{
  public static final boolean RESET_AUDIORECORDER_ON_SPEAKER_EVENT = false;
  public static final boolean RESET_AUDIOTRACK_ON_SPEAKER_EVENT = false;
  private static final String SENSE_UI_LAUNCHER_NAME = "com.htc.launcher.Launcher";
  public static final String TAG;
  public static final Map<String, Float> _volumeBoostedDevices;
  static ISoundService instance;
  private static final boolean isGalaxyS;
  private static final boolean isGalaxyS2;
  private static final boolean isGalaxySwifi;
  private static final boolean isHTCSense;
  private static final boolean isHtcDesireC;
  private static final boolean isHtcDesireV;
  private static final boolean isLGOptimus;
  private static final boolean isMilestone;
  private static final boolean isNexusS;
  private static final boolean isZteBlade;
  
  static
  {
    boolean bool1 = true;
    TAG = SoundFactory.class.getSimpleName();
    _volumeBoostedDevices = new HashMap();
    _volumeBoostedDevices.put("GT-I9100", Float.valueOf(1.5F));
    _volumeBoostedDevices.put("GT-N7000", Float.valueOf(1.5F));
    log(3, "-- sound init --", ":: brand: [" + Build.BRAND + "]; " + "device: [" + Build.DEVICE + "]; " + "manufacturer: [" + Build.MANUFACTURER + "]; " + "model: [" + Build.MODEL + "]; product: [" + Build.PRODUCT + "]; " + " user: [" + Build.USER + "]; ID: [" + Build.ID + "] ::" + " weak? " + SoundServiceCommonConfig.WEAK_DEVICE + " ::");
    boolean bool2;
    label254:
    boolean bool3;
    label272:
    boolean bool4;
    label291:
    boolean bool5;
    label310:
    boolean bool6;
    label329:
    boolean bool7;
    label348:
    boolean bool8;
    label367:
    boolean bool9;
    label405:
    boolean bool10;
    if ((!Build.MODEL.equalsIgnoreCase("GT-I9000")) && (!Build.MODEL.equalsIgnoreCase("SPH-D700")) && (!Build.MODEL.equalsIgnoreCase("SGH-I897")) && (!Build.MODEL.equalsIgnoreCase("SGH-T959")) && (!Build.MODEL.equalsIgnoreCase("SCH-I500")) && (!Build.MODEL.equalsIgnoreCase("SCH-I400")))
    {
      bool2 = false;
      isGalaxyS = bool2;
      if (Build.MODEL.equalsIgnoreCase("YP-GS1")) {
        break label535;
      }
      bool3 = false;
      isGalaxySwifi = bool3;
      if (Build.MODEL.equalsIgnoreCase("Nexus S")) {
        break label541;
      }
      bool4 = false;
      isNexusS = bool4;
      if (Build.DEVICE.equalsIgnoreCase("blade")) {
        break label547;
      }
      bool5 = false;
      isZteBlade = bool5;
      if (Build.DEVICE.equalsIgnoreCase("golfu")) {
        break label553;
      }
      bool6 = false;
      isHtcDesireC = bool6;
      if (Build.DEVICE.equalsIgnoreCase("primods")) {
        break label559;
      }
      bool7 = false;
      isHtcDesireV = bool7;
      if (Build.MODEL.equalsIgnoreCase("GT-I9100")) {
        break label565;
      }
      bool8 = false;
      isGalaxyS2 = bool8;
      if ((Build.MODEL.equalsIgnoreCase("Milestone")) || ((Build.MODEL.equalsIgnoreCase("MB525")) && (Build.VERSION.SDK_INT <= 7))) {
        break label571;
      }
      bool9 = false;
      isMilestone = bool9;
      if (!Build.MODEL.equalsIgnoreCase("LG-P500")) {
        bool1 = false;
      }
      isLGOptimus = bool1;
      if ((isGalaxyS | isMilestone | isLGOptimus)) {
        break label577;
      }
      bool10 = detectHTCSense();
      label446:
      isHTCSense = bool10;
      if (!isGalaxyS) {
        break label583;
      }
      label457:
      RESET_AUDIORECORDER_ON_SPEAKER_EVENT = false;
      if (!isGalaxyS) {
        break label592;
      }
    }
    for (;;)
    {
      RESET_AUDIOTRACK_ON_SPEAKER_EVENT = false;
      Compiler.enable();
      return;
      if (("MIUI".equalsIgnoreCase(Build.ID)) || ("Cyanogen".equalsIgnoreCase(Build.ID)) || ("CyanogenMod".equalsIgnoreCase(Build.ID)) || ("GRJ22".equalsIgnoreCase(Build.ID)) || (Build.HOST.startsWith("cm-build"))) {
        break;
      }
      bool2 = bool1;
      break label254;
      label535:
      bool3 = bool1;
      break label272;
      label541:
      bool4 = bool1;
      break label291;
      label547:
      bool5 = bool1;
      break label310;
      label553:
      bool6 = bool1;
      break label329;
      label559:
      bool7 = bool1;
      break label348;
      label565:
      bool8 = bool1;
      break label367;
      label571:
      bool9 = bool1;
      break label405;
      label577:
      bool10 = false;
      break label446;
      label583:
      if (!isMilestone) {
        break label457;
      }
      break label457;
      label592:
      if (!isMilestone) {}
    }
  }
  
  private static ISoundService chooseSoundServiceModelImplInternal(Context paramContext)
  {
    if ((isGalaxyS) && (Build.VERSION.SDK_INT <= 8)) {
      return new GalaxySFamilySoundService(paramContext);
    }
    if (isMilestone()) {
      return new MilestoneFamilySoundService(paramContext);
    }
    if (isLGOptimus) {
      return new LGOptimusSoundService(paramContext);
    }
    if ((isNexusS) || (isHtcDesireC) || (isHtcDesireV)) {
      return new ModeNormalGenericSoundService(paramContext);
    }
    if ((isZteBlade) || (isGalaxySwifi)) {
      return new ModeInCallGenericSoundService(paramContext);
    }
    return new GenericSoundService(paramContext);
  }
  
  private static boolean detectHTCSense()
  {
    PackageManager localPackageManager = ViberApplication.getInstance().getPackageManager();
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    Iterator localIterator = localPackageManager.queryIntentActivities(localIntent, 65536).iterator();
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      if ((localResolveInfo.activityInfo != null) && ("com.htc.launcher.Launcher".equals(localResolveInfo.activityInfo.name))) {
        return true;
      }
    }
    return false;
  }
  
  public static ISoundService getSoundService(Context paramContext)
  {
    try
    {
      long l = SystemClock.elapsedRealtime();
      if ((instance == null) && (paramContext != null)) {
        init((ViberApplication)paramContext.getApplicationContext());
      }
      if (SystemClock.elapsedRealtime() - l > 100L) {
        ViberApplication.log(6, TAG, "Use mViberApplication.getPhoneController(false).addReadyListener()! SoundFactory should be initialized asynchronously. \n" + Arrays.toString(Thread.currentThread().getStackTrace()));
      }
      ISoundService localISoundService = instance;
      return localISoundService;
    }
    finally {}
  }
  
  public static void init(ViberApplication paramViberApplication)
  {
    for (;;)
    {
      try
      {
        if (instance != null) {
          break label478;
        }
        paramViberApplication.getPhoneController(false).init();
        instance = chooseSoundServiceModelImplInternal(paramViberApplication);
        log(3, TAG, ":: using " + instance.getClass().getSimpleName() + " AudioManager wrapper ::");
        String str1 = TAG;
        StringBuilder localStringBuilder = new StringBuilder().append(":: voice channel listeners are ");
        if (instance.useVoiceChannelListeners())
        {
          str2 = "ENABLED (!!! experimental feature warning, should be compiled in native lib !!!)";
          log(3, str1, str2 + "  ::");
          if (_volumeBoostedDevices.containsKey(Build.MODEL)) {
            instance.setVolumeBoostLevel(((Float)_volumeBoostedDevices.get(Build.MODEL)).floatValue());
          }
          paramViberApplication.getPhoneController(false).registerDelegate(instance);
          DialerHoldStateListener localDialerHoldStateListener = paramViberApplication.getPhoneController(false).getDelegatesManager().getDialerHoldStateListener();
          DialerControllerDelegate.DialerHoldState[] arrayOfDialerHoldState = new DialerControllerDelegate.DialerHoldState[1];
          arrayOfDialerHoldState[0] = instance;
          localDialerHoldStateListener.registerDelegate(arrayOfDialerHoldState);
          DialerPhoneStateListener localDialerPhoneStateListener = paramViberApplication.getPhoneController(false).getDelegatesManager().getDialerPhoneStateListener();
          DialerControllerDelegate.DialerPhoneState[] arrayOfDialerPhoneState = new DialerControllerDelegate.DialerPhoneState[1];
          arrayOfDialerPhoneState[0] = instance;
          localDialerPhoneStateListener.registerDelegate(arrayOfDialerPhoneState);
          DialerLocalCallStateListener localDialerLocalCallStateListener = paramViberApplication.getPhoneController(false).getDelegatesManager().getDialerLocalCallStateListener();
          DialerControllerDelegate.DialerLocalCallState[] arrayOfDialerLocalCallState = new DialerControllerDelegate.DialerLocalCallState[1];
          arrayOfDialerLocalCallState[0] = instance;
          localDialerLocalCallStateListener.registerDelegate(arrayOfDialerLocalCallState);
          AbstractSoundService.setDeviceFlags(DeviceFlags.getFlagsForDeviceModel());
          DeviceFlags.DeviceModes localDeviceModes = DeviceFlags.getSpeechEnhancementsModeForDeviceModel();
          AbstractSoundService.setSpeechEnhancementsModes(localDeviceModes.AEC_mode, localDeviceModes.AGC_mode, localDeviceModes.NS_mode, localDeviceModes.RxAGC_mode, localDeviceModes.RxNS_mode);
          Iterator localIterator = instance.getVocoderSettings().getSupportedCodecs().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          ISoundService.IVocoderSettings.IVocoderDescriptor localIVocoderDescriptor = (ISoundService.IVocoderSettings.IVocoderDescriptor)localIterator.next();
          log(3, TAG, "[" + localIVocoderDescriptor.getVocoderId() + "] supported VOE codec: " + localIVocoderDescriptor.getVocoderName() + " (bitrate:" + localIVocoderDescriptor.getVocoderBitrate() + ", payload:" + localIVocoderDescriptor.getVocoderPayloadType() + ")");
          continue;
        }
        String str2 = "disabled";
      }
      finally {}
    }
    ToneGeneratorFactory.init((AbstractSoundService)instance);
    boolean bool = AbstractSoundService.isVideoSupportBuiltin();
    if (bool) {}
    label478:
  }
  
  public static boolean isGalaxyS()
  {
    return isGalaxyS;
  }
  
  public static boolean isGalaxyS2()
  {
    return isGalaxyS2;
  }
  
  public static boolean isHTCSense()
  {
    return isHTCSense;
  }
  
  public static boolean isInitialized()
  {
    return instance != null;
  }
  
  public static boolean isMilestone()
  {
    return isMilestone;
  }
  
  public static boolean isTonegenOnInCallChannel()
  {
    return !isMilestone;
  }
  
  public static boolean isVoiceOnInCallChannel()
  {
    return !isMilestone;
  }
  
  public static void log(int paramInt, String paramString1, String paramString2) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.SoundFactory
 * JD-Core Version:    0.7.0.1
 */