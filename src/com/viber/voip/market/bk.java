package com.viber.voip.market;

import android.content.Context;
import com.viber.jni.ClientMessages.DeviceTypes;
import com.viber.voip.ViberApplication;
import com.viber.voip.billing.a;
import com.viber.voip.billing.bn;
import com.viber.voip.billing.bt;
import com.viber.voip.market.a.c;
import com.viber.voip.market.a.d;
import com.viber.voip.market.a.g;
import com.viber.voip.market.a.k;
import com.viber.voip.market.a.m;
import com.viber.voip.process.e;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.registration.cp;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class bk
{
  private static final String a = MarketApi.class.getSimpleName();
  private bm b;
  private com.viber.voip.process.i c;
  private boolean d;
  
  public bk(Context paramContext, boolean paramBoolean)
  {
    this.d = paramBoolean;
    this.c = new bl(this);
    e.a().a(this.c);
  }
  
  private JSONObject b()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("version", ViberApplication.getInstance().getAppVersion());
      localJSONObject.put("system", ClientMessages.DeviceTypes.getDeviceId());
      localJSONObject.put("language", Locale.getDefault());
      localJSONObject.put("country", ViberApplication.getInstance().getRegistrationValues().c());
      localJSONObject.put("mcc", ViberApplication.getInstance().getHardwareParameters().getMCC());
      localJSONObject.put("mnc", ViberApplication.getInstance().getHardwareParameters().getMNC());
      localJSONObject.put("phone_prefix", ViberApplication.getInstance().getRegistrationValues().g());
      localJSONObject.put("visit_count", c());
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return localJSONObject;
  }
  
  private static void b(String paramString)
  {
    a.a(a, paramString);
  }
  
  private int c()
  {
    int i = ViberApplication.preferences().b("PREF_MARKET_VISIT_COUNT", 0);
    if (i < 1000) {
      if (this.d)
      {
        i++;
        ViberApplication.preferences().a("PREF_MARKET_VISIT_COUNT", i);
      }
    }
    while (i <= 1000) {
      return i;
    }
    ViberApplication.preferences().a("PREF_MARKET_VISIT_COUNT", 1000);
    return 1000;
  }
  
  public void a()
  {
    e.a().b(this.c);
  }
  
  public void a(bn parambn, String paramString)
  {
    new com.viber.voip.market.a.l().a(parambn, paramString);
  }
  
  public void a(bt parambt, w paramw)
  {
    new g().a(parambt, paramw);
  }
  
  public void a(bt parambt, String paramString)
  {
    new c().a(parambt, paramString);
  }
  
  public void a(MarketPublicGroupInfo paramMarketPublicGroupInfo)
  {
    new m().a(paramMarketPublicGroupInfo);
  }
  
  public void a(MarketPublicGroupInfo paramMarketPublicGroupInfo, r paramr)
  {
    new d().a(paramMarketPublicGroupInfo, true, paramr);
  }
  
  public void a(bm parambm)
  {
    this.b = parambm;
  }
  
  public void a(q paramq)
  {
    paramq.a(b());
  }
  
  public void a(s params)
  {
    new k().a(params);
  }
  
  public void a(bn[] paramArrayOfbn, u paramu)
  {
    new com.viber.voip.market.a.i().a(paramArrayOfbn, paramu);
  }
  
  public void b(MarketPublicGroupInfo paramMarketPublicGroupInfo, r paramr)
  {
    new d().a(paramMarketPublicGroupInfo, false, paramr);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.bk
 * JD-Core Version:    0.7.0.1
 */