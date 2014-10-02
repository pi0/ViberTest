package com.viber.voip.c;

import com.viber.dexshared.CrashlyticsHelper;
import com.viber.dexshared.GMaps.Factory;
import com.viber.dexshared.GoogleAnalyticsHelper;
import com.viber.dexshared.MicrologHelper;
import com.viber.dexshared.TwitterHelper;
import com.viber.dexshared.ZXing.Factory;
import com.viber.voip.DexFactory;
import com.viber.voip.util.http.HttpRequestFactory;

public class a
  implements DexFactory
{
  private HttpRequestFactory a;
  
  private Object a(Class<?> paramClass, b paramb)
  {
    return a("com.viber.dexlibs." + paramClass.getSimpleName() + "Impl", paramb);
  }
  
  private Object a(String paramString, b paramb)
  {
    try
    {
      Object localObject = paramb.a(paramString).newInstance();
      return localObject;
    }
    catch (Exception localException)
    {
      throw new UnsupportedOperationException("Error instantiating " + paramString, localException);
    }
  }
  
  public GMaps.Factory getGMapsFactory()
  {
    return (GMaps.Factory)a("com.viber.dexlibs.GMapsFactoryImpl", g.a());
  }
  
  public HttpRequestFactory getHttpRequestFactory()
  {
    if (this.a == null) {}
    try
    {
      if (this.a == null) {
        this.a = ((HttpRequestFactory)a("com.viber.voip.util.http.HttpRequestFactoryImpl", g.a()));
      }
      return this.a;
    }
    finally {}
  }
  
  public ZXing.Factory getZXingFactory()
  {
    return (ZXing.Factory)a("com.viber.dexlibs.ZXingFactoryImpl", g.a());
  }
  
  public CrashlyticsHelper newCrashlyticsHelper()
  {
    return (CrashlyticsHelper)a(CrashlyticsHelper.class, g.a());
  }
  
  public GoogleAnalyticsHelper newGoogleAnalyticsHelper()
  {
    return (GoogleAnalyticsHelper)a(GoogleAnalyticsHelper.class, g.a());
  }
  
  public MicrologHelper newMicrologHelper()
  {
    return (MicrologHelper)a(MicrologHelper.class, g.a());
  }
  
  public TwitterHelper newTwitterHelper()
  {
    return (TwitterHelper)a(TwitterHelper.class, g.a());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.c.a
 * JD-Core Version:    0.7.0.1
 */