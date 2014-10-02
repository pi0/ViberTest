package com.viber.jni;

import android.annotation.SuppressLint;
import android.os.Build;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import com.viber.voip.sound.AbstractSoundService;
import java.util.HashMap;
import java.util.Map;

public class DeviceFlags
{
  public static final int DF_USE_16000_SAMPLE_RATE = 1;
  public static final int DF_USE_AGC = 8;
  public static final int DF_USE_EC = 4;
  public static final int DF_USE_HI_VOLUME = 16;
  public static final int DF_USE_MIC_BOOST = 32;
  public static final int DF_USE_NS = 2;
  public static final int DF_USE_VIDEO = 64;
  private static int SONY_STANDARD_FLAGS;
  private static int STANDARD_FLAGS = 14;
  public static int _AECmode;
  public static int _AGCmode;
  public static int _NSmode;
  public static int _RxAGCmode;
  public static int _RxNSmode;
  private static Map<String, DeviceFlags.DeviceModes> mFlagMap;
  
  static
  {
    SONY_STANDARD_FLAGS = 0x1 | STANDARD_FLAGS;
    mFlagMap = new HashMap();
    populateMap();
  }
  
  @SuppressLint({"NewApi"})
  public static int getFlagsForDeviceModel()
  {
    String str = Build.DEVICE;
    i = STANDARD_FLAGS;
    if (mFlagMap.containsKey(str)) {}
    for (;;)
    {
      try
      {
        j = ((DeviceFlags.DeviceModes)mFlagMap.get(str)).deviceFlags;
        if (j == -1) {}
        try
        {
          j = STANDARD_FLAGS;
          ViberApplication.log("Device " + str + " not found, using default flags...");
          if (!AbstractSoundService.isVideoSupportBuiltin()) {
            continue;
          }
          k = 64;
          int m = j | k;
          if (!ViberApplication.preferences().b("webrtc_ec_enabled", true)) {
            m &= 0xFFFFFFFB;
          }
          return m;
        }
        catch (Exception localException2) {}
        ViberApplication.log("Device " + str + " found, using flags : " + j);
        continue;
      }
      catch (Exception localException1)
      {
        int k;
        int j = i;
        Object localObject = localException1;
        continue;
      }
      localException2.printStackTrace();
      continue;
      ViberApplication.log("Device " + str + " not found, using default flags...");
      j = i;
      continue;
      k = 0;
    }
  }
  
  public static DeviceFlags.DeviceModes getSpeechEnhancementsModeForDeviceModel()
  {
    DeviceFlags.DeviceModes localDeviceModes1 = new DeviceFlags.DeviceModes(0);
    String str = Build.DEVICE;
    if (mFlagMap.containsKey(str))
    {
      try
      {
        localDeviceModes2 = (DeviceFlags.DeviceModes)mFlagMap.get(str);
        Exception localException2;
        localException2.printStackTrace();
      }
      catch (Exception localException1)
      {
        try
        {
          ViberApplication.log("Speech Enhancements for Device " + str + " found, using AEC mode: " + localDeviceModes2.AEC_mode + " AGC mode: " + localDeviceModes2.AGC_mode + " NS mode: " + localDeviceModes2.NS_mode);
          ViberApplication.log("Speech Enhancements for Device " + str + " found, using RxAGC mode: " + localDeviceModes2.RxAGC_mode + " RxNS mode: " + localDeviceModes2.RxNS_mode);
          _AECmode = localDeviceModes2.AEC_mode;
          _AGCmode = localDeviceModes2.AGC_mode;
          _NSmode = localDeviceModes2.NS_mode;
          _RxAGCmode = localDeviceModes2.RxAGC_mode;
          _RxNSmode = localDeviceModes2.RxNS_mode;
          return localDeviceModes2;
        }
        catch (Exception localException3)
        {
          DeviceFlags.DeviceModes localDeviceModes2;
          break label185;
        }
        localException1 = localException1;
        localDeviceModes2 = localDeviceModes1;
        localException2 = localException1;
      }
      label185:
      return localDeviceModes2;
    }
    else
    {
      ViberApplication.log("Speech Enhancements for Device " + str + " NOT found, using default Speech Enhancements Modes...");
      return localDeviceModes1;
    }
  }
  
  private static void populateMap()
  {
    mFlagMap.clear();
    mFlagMap.put("E10a", new DeviceFlags.DeviceModes(SONY_STANDARD_FLAGS));
    mFlagMap.put("E10i", new DeviceFlags.DeviceModes(SONY_STANDARD_FLAGS));
    mFlagMap.put("E16i", new DeviceFlags.DeviceModes(SONY_STANDARD_FLAGS));
    mFlagMap.put("E16a", new DeviceFlags.DeviceModes(SONY_STANDARD_FLAGS));
    mFlagMap.put("X10i", new DeviceFlags.DeviceModes(SONY_STANDARD_FLAGS));
    mFlagMap.put("X10a", new DeviceFlags.DeviceModes(SONY_STANDARD_FLAGS));
    mFlagMap.put("U20i", new DeviceFlags.DeviceModes(SONY_STANDARD_FLAGS));
    mFlagMap.put("U20a", new DeviceFlags.DeviceModes(SONY_STANDARD_FLAGS));
    mFlagMap.put("E15i", new DeviceFlags.DeviceModes(SONY_STANDARD_FLAGS));
    mFlagMap.put("E15a", new DeviceFlags.DeviceModes(SONY_STANDARD_FLAGS));
    mFlagMap.put("legend", new DeviceFlags.DeviceModes(0x1 | STANDARD_FLAGS));
    mFlagMap.put("thunderg", new DeviceFlags.DeviceModes(0x1 | STANDARD_FLAGS));
    mFlagMap.put("U8150", new DeviceFlags.DeviceModes(0x1 | STANDARD_FLAGS));
    mFlagMap.put("GT-I5500", new DeviceFlags.DeviceModes(5));
    mFlagMap.put("S5570I", new DeviceFlags.DeviceModes(5));
    mFlagMap.put("GIONEE", new DeviceFlags.DeviceModes(5));
    mFlagMap.put("runnymede", new DeviceFlags.DeviceModes(1, 0, 0, 3, 0, -1));
    mFlagMap.put("ja3g", new DeviceFlags.DeviceModes(0, 0, 0, 0, 0, -1));
    mFlagMap.put("vision", new DeviceFlags.DeviceModes(2, 0, 1, 0, 0, -1));
    mFlagMap.put("DiabloHD", new DeviceFlags.DeviceModes(3, 0, 0, 2, 0, -1));
    mFlagMap.put("hwG510-0010", new DeviceFlags.DeviceModes(2, 0, 1, 2, 0, -1));
    mFlagMap.put("buzz", new DeviceFlags.DeviceModes(2, 0, 0, 0, 0, 1));
    mFlagMap.put("vee3e", new DeviceFlags.DeviceModes(2, 0, 0, 0, 0, -1));
    mFlagMap.put("hammerhead", new DeviceFlags.DeviceModes(2, 0, 0, 2, 0, -1));
    mFlagMap.put("vee7ds", new DeviceFlags.DeviceModes(0, 0, 0, 0, 0, -1));
    mFlagMap.put("LT26i", new DeviceFlags.DeviceModes(0, 0, 0, 0, 0, -1));
    mFlagMap.put("Pixo_GSM", new DeviceFlags.DeviceModes(3, 0, 0, 3, 0, -1));
    mFlagMap.put("GT-I9000", new DeviceFlags.DeviceModes(3, 0, 1, 3, 0, -1));
    mFlagMap.put("g2", new DeviceFlags.DeviceModes(0, 0, 0, 0, 0, -1));
    mFlagMap.put("ace", new DeviceFlags.DeviceModes(0, 0, 0, 2, 0, -1));
    mFlagMap.put("hwY300-0000", new DeviceFlags.DeviceModes(1, 0, 1, 2, 0, -1));
    mFlagMap.put("X10i", new DeviceFlags.DeviceModes(2, 0, 0, 3, 0, SONY_STANDARD_FLAGS));
    mFlagMap.put("GT-S5570", new DeviceFlags.DeviceModes(1, 0, 1, 2, 0, -1));
    mFlagMap.put("saga", new DeviceFlags.DeviceModes(1, 0, 1, 2, 0, -1));
    mFlagMap.put("Scribe5HD", new DeviceFlags.DeviceModes(1, 0, 0, 2, 0, -1));
    mFlagMap.put("bravo", new DeviceFlags.DeviceModes(1, 0, 1, 3, 0, -1));
    mFlagMap.put("hwY300-0151", new DeviceFlags.DeviceModes(2, 0, 1, 0, 0, -1));
    mFlagMap.put("evita", new DeviceFlags.DeviceModes(1, 0, 0, 0, 0, -1));
    mFlagMap.put("vivo", new DeviceFlags.DeviceModes(2, 0, 0, 2, 0, -1));
    mFlagMap.put("GT-I5510", new DeviceFlags.DeviceModes(0, 0, 1, 0, 0, -1));
    mFlagMap.put("pyramid", new DeviceFlags.DeviceModes(0, 0, 1, 2, 0, -1));
    mFlagMap.put("mintss", new DeviceFlags.DeviceModes(1, 0, 0, 2, 0, -1));
    mFlagMap.put("mako", new DeviceFlags.DeviceModes(3, 3, 2, 3, 0, -1));
    mFlagMap.put("hwu8825D", new DeviceFlags.DeviceModes(3, 0, 1, 3, 0, -1));
    mFlagMap.put("chacha", new DeviceFlags.DeviceModes(1, 0, 1, 2, 0, -1));
    mFlagMap.put("GT-I9100", new DeviceFlags.DeviceModes(0, 0, 0, 2, 0, -1));
    mFlagMap.put("GT-N7000", new DeviceFlags.DeviceModes(0, 3, 0, 0, 0, -1));
    mFlagMap.put("blade", new DeviceFlags.DeviceModes(2, 0, 0, 2, 0, -1));
    mFlagMap.put("Martell_lite_GSM", new DeviceFlags.DeviceModes(3, 0, 0, 3, 1, -1));
    mFlagMap.put("maguro", new DeviceFlags.DeviceModes(2, 0, 1, 2, 0, -1));
    mFlagMap.put("umts_spyder", new DeviceFlags.DeviceModes(1, 0, 0, 2, 0, 1));
    mFlagMap.put("A68", new DeviceFlags.DeviceModes(1, 0, 0, 2, 0, -1));
    mFlagMap.put("LT18a", new DeviceFlags.DeviceModes(1, 0, 1, 2, 0, -1));
    mFlagMap.put("marvel", new DeviceFlags.DeviceModes(1, 0, 0, 2, 0, -1));
    mFlagMap.put("t03g", new DeviceFlags.DeviceModes(0, 0, 0, 0, 0, -1));
    mFlagMap.put("u8800", new DeviceFlags.DeviceModes(2, 0, 1, 3, 0, -1));
    mFlagMap.put("m7", new DeviceFlags.DeviceModes(0, 0, 0, 0, 0, -1));
    mFlagMap.put("GT-S5300", new DeviceFlags.DeviceModes(0, 0, 0, 2, 0, -1));
    mFlagMap.put("GT-S5830", new DeviceFlags.DeviceModes(0, 0, 0, 0, 0, -1));
    mFlagMap.put("GT-S5360", new DeviceFlags.DeviceModes(1, 0, 0, 3, 0, -1));
    mFlagMap.put("Martell_GSM", new DeviceFlags.DeviceModes(0, 0, 0, 2, 0, -1));
    mFlagMap.put("kyleopen", new DeviceFlags.DeviceModes(0, 0, 0, 0, 0, -1));
    mFlagMap.put("hsdroid", new DeviceFlags.DeviceModes(1, 0, 1, 2, 0, -1));
    mFlagMap.put("m0", new DeviceFlags.DeviceModes(0, 0, 0, 0, 0, -1));
    mFlagMap.put("ST25i", new DeviceFlags.DeviceModes(1, 0, 1, 0, 0, -1));
    mFlagMap.put("jflte", new DeviceFlags.DeviceModes(0, 0, 0, 0, 0, -1));
    mFlagMap.put("golden", new DeviceFlags.DeviceModes(0, 3, 0, 0, 0, -1));
    mFlagMap.put("geeb", new DeviceFlags.DeviceModes(2, 0, 0, 2, 0, -1));
    mFlagMap.put("smi", new DeviceFlags.DeviceModes(3, 0, 0, 3, 0, -1));
    mFlagMap.put("bird77_a_cu_ics2", new DeviceFlags.DeviceModes(0, 0, 0, 0, 0, -1));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.DeviceFlags
 * JD-Core Version:    0.7.0.1
 */