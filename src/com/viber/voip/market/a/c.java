package com.viber.voip.market.a;

import android.os.Bundle;
import com.viber.voip.ViberApplication;
import com.viber.voip.billing.bt;
import com.viber.voip.market.MarketApi;
import com.viber.voip.process.b;

public class c
  extends com.viber.voip.process.c
{
  public void a(bt parambt, String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("product_id", parambt.toString());
    localBundle.putString("json", paramString);
    execute(ViberApplication.getInstance(), c.class, localBundle);
  }
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    bt localbt = bt.a(paramBundle.getString("product_id"));
    String str = paramBundle.getString("json");
    MarketApi.a().a(localbt, str);
    paramb.a(null);
  }
  
  public void processResult(Bundle paramBundle) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.a.c
 * JD-Core Version:    0.7.0.1
 */