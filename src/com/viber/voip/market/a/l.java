package com.viber.voip.market.a;

import android.os.Bundle;
import com.viber.voip.ViberApplication;
import com.viber.voip.billing.bn;
import com.viber.voip.market.MarketApi;
import com.viber.voip.process.b;
import com.viber.voip.process.c;

public class l
  extends c
{
  public void a(bn parambn, String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("product_id", parambn.toString());
    localBundle.putString("json", paramString);
    execute(ViberApplication.getInstance(), l.class, localBundle);
  }
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    bn localbn = bn.a(paramBundle.getString("product_id"));
    String str = paramBundle.getString("json");
    MarketApi.a().a(localbn, str);
    paramb.a(null);
  }
  
  public void processResult(Bundle paramBundle) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.a.l
 * JD-Core Version:    0.7.0.1
 */