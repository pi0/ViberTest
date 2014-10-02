package com.viber.jni;

import android.content.res.Resources;
import com.viber.voip.registration.dj;

public class ClientMessages$DeviceTypes
{
  public static final int DEVICE_ANDROID = 1;
  public static final int DEVICE_ANDROID_TABLET = 21;
  public static final int DEVICE_APPLE = 0;
  public static final int DEVICE_BACKEND_TEST = 95;
  public static final int DEVICE_BADA = 100;
  public static final int DEVICE_BADA3 = 110;
  public static final int DEVICE_BLACKBERRY = 102;
  public static final int DEVICE_BLACKBERRY10 = 10;
  public static final int DEVICE_FIREFOX_OS = 113;
  public static final int DEVICE_INTERNAL_USE = 105;
  public static final int DEVICE_IOS3 = 8;
  public static final int DEVICE_IOSE = 99;
  public static final int DEVICE_IPAD = 20;
  public static final int DEVICE_IPADE = 98;
  public static final int DEVICE_LINUX = 6;
  public static final int DEVICE_MEDIATEK = 108;
  public static final int DEVICE_MEDIATEK_NATIVE = 114;
  public static final int DEVICE_MNC = 104;
  public static final int DEVICE_MSTAR = 106;
  public static final int DEVICE_NOKIAS40 = 109;
  public static final int DEVICE_NOKIAS60 = 101;
  public static final int DEVICE_OSX = 7;
  public static final int DEVICE_OSX_OLD = 2;
  public static final int DEVICE_SPREADTRUM = 107;
  public static final int DEVICE_UNKNOWN = -1;
  public static final int DEVICE_VIBER_TERM = 111;
  public static final int DEVICE_WEB_WIDGET = 112;
  public static final int DEVICE_WINDOWS = 4;
  public static final int DEVICE_WINDOWS8 = 5;
  public static final int DEVICE_WP7 = 3;
  public static final int DEVICE_WP7_API = 103;
  public static final int DEVICE_WP8 = 9;
  private static final int[] sVisibleTypingDeviceTypes = { 4, 5, 6, 7, 21 };
  
  public static int getDeviceId()
  {
    if (dj.d()) {
      return 21;
    }
    return 1;
  }
  
  public static boolean isVisibleInTyping(int paramInt)
  {
    int[] arrayOfInt = sVisibleTypingDeviceTypes;
    int i = arrayOfInt.length;
    for (int j = 0;; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (arrayOfInt[j] == paramInt) {
          bool = true;
        }
      }
      else {
        return bool;
      }
    }
  }
  
  public static String toString(int paramInt, Resources paramResources)
  {
    switch (paramInt)
    {
    default: 
      return paramResources.getString(2131494850);
    case -1: 
      return paramResources.getString(2131494850);
    case 0: 
      return paramResources.getString(2131494851);
    case 1: 
      return paramResources.getString(2131494852);
    case 3: 
      return paramResources.getString(2131494853);
    case 4: 
      return paramResources.getString(2131494854);
    case 5: 
      return paramResources.getString(2131494855);
    case 6: 
      return paramResources.getString(2131494856);
    case 7: 
      return paramResources.getString(2131494857);
    case 8: 
      return paramResources.getString(2131494858);
    case 9: 
      return paramResources.getString(2131494859);
    case 10: 
      return paramResources.getString(2131494860);
    case 21: 
      return paramResources.getString(2131494861);
    case 99: 
      return paramResources.getString(2131494862);
    case 100: 
      return paramResources.getString(2131494863);
    case 101: 
      return paramResources.getString(2131494864);
    case 102: 
      return paramResources.getString(2131494865);
    case 103: 
      return paramResources.getString(2131494866);
    case 109: 
      return paramResources.getString(2131494867);
    }
    return paramResources.getString(2131494868);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ClientMessages.DeviceTypes
 * JD-Core Version:    0.7.0.1
 */