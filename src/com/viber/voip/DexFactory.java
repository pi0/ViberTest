package com.viber.voip;

import com.viber.dexshared.CrashlyticsHelper;
import com.viber.dexshared.GMaps.Factory;
import com.viber.dexshared.GoogleAnalyticsHelper;
import com.viber.dexshared.MicrologHelper;
import com.viber.dexshared.TwitterHelper;
import com.viber.dexshared.ZXing.Factory;
import com.viber.voip.util.http.HttpRequestFactory;

public abstract interface DexFactory
{
  public abstract GMaps.Factory getGMapsFactory();
  
  public abstract HttpRequestFactory getHttpRequestFactory();
  
  public abstract ZXing.Factory getZXingFactory();
  
  public abstract CrashlyticsHelper newCrashlyticsHelper();
  
  public abstract GoogleAnalyticsHelper newGoogleAnalyticsHelper();
  
  public abstract MicrologHelper newMicrologHelper();
  
  public abstract TwitterHelper newTwitterHelper();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.DexFactory
 * JD-Core Version:    0.7.0.1
 */