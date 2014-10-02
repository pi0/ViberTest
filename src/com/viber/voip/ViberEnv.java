package com.viber.voip;

import com.viber.dexshared.CrashlyticsHelper;
import com.viber.dexshared.GMaps.Factory;
import com.viber.dexshared.GoogleAnalyticsHelper;
import com.viber.dexshared.MicrologHelper;
import com.viber.dexshared.TwitterHelper;
import com.viber.dexshared.ZXing.Factory;
import com.viber.voip.pixie.PixieController;
import com.viber.voip.util.http.HttpRequest;
import com.viber.voip.util.http.HttpRequestFactory;

public class ViberEnv
{
  private static DexFactory sDexFactory;
  private static ViberLogger sLogger;
  private static ViberFactory sViberFactory;
  
  public static GMaps.Factory getGMapsFactory()
  {
    return sDexFactory.getGMapsFactory();
  }
  
  public static PixieController getPixieController()
  {
    return sViberFactory.getPixieController();
  }
  
  public static ZXing.Factory getZXingFactory()
  {
    return sDexFactory.getZXingFactory();
  }
  
  public static void init(ViberFactory paramViberFactory, DexFactory paramDexFactory)
  {
    sViberFactory = paramViberFactory;
    sDexFactory = paramDexFactory;
    sLogger = paramViberFactory.getLogger();
  }
  
  public static void log(String paramString1, String paramString2)
  {
    sLogger.log(paramString1, paramString2);
  }
  
  public static void log(String paramString1, String paramString2, Throwable paramThrowable)
  {
    sLogger.log(paramString1, paramString2, paramThrowable);
  }
  
  public static CrashlyticsHelper newCrashlyticsHelper()
  {
    return sDexFactory.newCrashlyticsHelper();
  }
  
  public static GoogleAnalyticsHelper newGoogleAnalyticsHelper()
  {
    return sDexFactory.newGoogleAnalyticsHelper();
  }
  
  public static HttpRequest newHttpRequest(String paramString)
  {
    return sDexFactory.getHttpRequestFactory().newHttpRequest(paramString);
  }
  
  public static MicrologHelper newMicrologHelper()
  {
    return sDexFactory.newMicrologHelper();
  }
  
  public static TwitterHelper newTwitterHelper()
  {
    return sDexFactory.newTwitterHelper();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ViberEnv
 * JD-Core Version:    0.7.0.1
 */