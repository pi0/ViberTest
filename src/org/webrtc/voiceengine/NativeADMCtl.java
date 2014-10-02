package org.webrtc.voiceengine;

import android.os.Build;
import android.util.Log;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import java.util.ArrayList;
import java.util.List;

public class NativeADMCtl
{
  public static final int DRIVER_FALLBACK_MASK = 4;
  public static final int DRIVER_NATIVE_MASK = 2;
  public static final int DRIVER_OPENSLES_MASK = 1;
  private static final boolean FALLBACK_DRIVER_ENABLED_BY_DEFAULT = true;
  public static final int FEATURE_EMPTY = 0;
  public static final int FEATURE_HW_AGC = 1;
  public static final int FEATURE_HW_IIR = 2;
  public static final int FEATURE_HW_NS = 4;
  public static final int FEATURE_SW_AEC = 16;
  public static final int FEATURE_SW_AGC = 8;
  public static final int FEATURE_SW_NS = 32;
  private static final boolean NATIVE_DRIVER_ENABLED_BY_DEFAULT = true;
  private static final boolean OPENSLES_DRIVER_ENABLED_BY_DEFAULT = true;
  public static final String TAG = NativeADMCtl.class.getSimpleName();
  private static final boolean USE_NATIVE_ADM_VENDORS_BLACKLIST = true;
  private static volatile NativeADMCtl _instance = null;
  private static final List<String> vendorsBlacklist = new ArrayList();
  private int[] _admFeaturesAvailable = null;
  private int[] _admFeaturesRequested = null;
  private volatile boolean _allowFallbackDriver = true;
  private volatile boolean _allowNativeDriver = true;
  private volatile boolean _allowOpenSLESDriver = true;
  private int _hwDeviceMask = 0;
  private boolean _initialized = false;
  
  static
  {
    vendorsBlacklist.add("sony");
    vendorsBlacklist.add("sony ericsson");
    vendorsBlacklist.add("motorola");
    vendorsBlacklist.add("asus");
  }
  
  public static NativeADMCtl getInstance()
  {
    try
    {
      if (_instance == null) {
        _instance = new NativeADMCtl();
      }
      NativeADMCtl localNativeADMCtl = _instance;
      return localNativeADMCtl;
    }
    finally {}
  }
  
  private void initialize(int paramInt)
  {
    if (vendorsBlacklist.contains(Build.MANUFACTURER.toLowerCase())) {
      paramInt &= 0xFFFFFFFD;
    }
    this._hwDeviceMask = paramInt;
    this._initialized = true;
    if (ViberApplication.preferences().b("sound_settings_audio_driver", "").length() != 0) {}
    try
    {
      setDeviceMask(Integer.parseInt(ViberApplication.preferences().b("sound_settings_audio_driver", "7")));
      return;
    }
    catch (NumberFormatException localNumberFormatException) {}
  }
  
  private void setAvailableFeaturesMask(int paramInt1, int paramInt2)
  {
    int i = (int)Math.ceil(Math.log(paramInt1) / Math.log(2.0D));
    if (this._admFeaturesAvailable == null) {
      this._admFeaturesAvailable = new int[i + 1];
    }
    if (this._admFeaturesAvailable.length <= i)
    {
      int[] arrayOfInt = new int[i + 1];
      System.arraycopy(this._admFeaturesAvailable, 0, arrayOfInt, 0, this._admFeaturesAvailable.length);
      this._admFeaturesAvailable = arrayOfInt;
    }
    this._admFeaturesAvailable[i] = paramInt2;
  }
  
  public boolean allowFallbackDriver()
  {
    return this._allowFallbackDriver & isFallbackDriverAvailable();
  }
  
  public boolean allowNativeDriver()
  {
    return this._allowNativeDriver & isNativeDriverAvailable();
  }
  
  public boolean allowOpenSLESDriver()
  {
    return this._allowOpenSLESDriver & isOpenSLESDriverAvailable();
  }
  
  public int getAvailableFeaturesMask(int paramInt)
  {
    if (this._admFeaturesAvailable == null) {}
    int i;
    do
    {
      return 0;
      i = (int)Math.ceil(Math.log(paramInt) / Math.log(2.0D));
    } while (this._admFeaturesAvailable.length <= i);
    return this._admFeaturesAvailable[i];
  }
  
  public int getDeviceMask()
  {
    return this._hwDeviceMask;
  }
  
  public int getFeaturesMask(int paramInt)
  {
    if (this._admFeaturesAvailable == null) {}
    int i;
    do
    {
      return 0;
      i = (int)Math.ceil(Math.log(paramInt) / Math.log(2.0D));
    } while (this._admFeaturesAvailable.length <= i);
    if ((this._admFeaturesRequested == null) || (this._admFeaturesRequested.length <= i))
    {
      int[] arrayOfInt = new int[i + 1];
      if (this._admFeaturesRequested != null) {
        System.arraycopy(this._admFeaturesRequested, 0, arrayOfInt, 0, this._admFeaturesRequested.length);
      }
      this._admFeaturesRequested = arrayOfInt;
    }
    return this._admFeaturesAvailable[i] & this._admFeaturesRequested[i];
  }
  
  public int getUsableDeviceMask()
  {
    int i;
    if (allowNativeDriver())
    {
      i = 2;
      if (!allowOpenSLESDriver()) {
        break label51;
      }
    }
    label51:
    for (int j = 1;; j = 0)
    {
      int k = i | j;
      boolean bool = allowFallbackDriver();
      int m = 0;
      if (bool) {
        m = 4;
      }
      return 0x0 | k | m;
      i = 0;
      break;
    }
  }
  
  public boolean isFallbackDriverAvailable()
  {
    return 4 == (0x4 & this._hwDeviceMask);
  }
  
  public boolean isInitialized()
  {
    return this._initialized;
  }
  
  public boolean isNativeDriverAvailable()
  {
    return 2 == (0x2 & this._hwDeviceMask);
  }
  
  public boolean isOpenSLESDriverAvailable()
  {
    return 1 == (0x1 & this._hwDeviceMask);
  }
  
  public void setDeviceMask(int paramInt)
  {
    int i = 1;
    if (vendorsBlacklist.contains(Build.MANUFACTURER.toLowerCase())) {
      paramInt &= 0xFFFFFFFD;
    }
    if (2 == (paramInt & 0x2))
    {
      int k = i;
      setNativeDriver(k);
      if (i != (paramInt & 0x1)) {
        break label72;
      }
      int n = i;
      label48:
      setOpenSLESDriver(n);
      if (4 != (paramInt & 0x4)) {
        break label78;
      }
    }
    for (;;)
    {
      setFallbackDriver(i);
      return;
      int m = 0;
      break;
      label72:
      int i1 = 0;
      break label48;
      label78:
      int j = 0;
    }
  }
  
  public void setFallbackDriver(boolean paramBoolean)
  {
    this._allowFallbackDriver = paramBoolean;
  }
  
  public void setFeaturesMask(int paramInt1, int paramInt2)
  {
    if (this._admFeaturesAvailable == null) {
      return;
    }
    int i = (int)Math.ceil(Math.log(paramInt1) / Math.log(2.0D));
    if (this._admFeaturesAvailable.length <= i)
    {
      Log.e(TAG, "unavailable device index requested: " + i);
      return;
    }
    if ((this._admFeaturesRequested == null) || (this._admFeaturesRequested.length <= i))
    {
      int[] arrayOfInt = new int[i + 1];
      if (this._admFeaturesRequested != null) {
        System.arraycopy(this._admFeaturesRequested, 0, arrayOfInt, 0, this._admFeaturesRequested.length);
      }
      this._admFeaturesRequested = arrayOfInt;
    }
    this._admFeaturesRequested[i] = paramInt2;
  }
  
  public void setNativeDriver(boolean paramBoolean)
  {
    this._allowNativeDriver = paramBoolean;
  }
  
  public void setOpenSLESDriver(boolean paramBoolean)
  {
    this._allowOpenSLESDriver = paramBoolean;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.voiceengine.NativeADMCtl
 * JD-Core Version:    0.7.0.1
 */