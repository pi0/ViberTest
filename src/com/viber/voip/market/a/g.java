package com.viber.voip.market.a;

import android.os.Bundle;
import com.viber.voip.ViberApplication;
import com.viber.voip.billing.bt;
import com.viber.voip.market.MarketApi;
import com.viber.voip.market.v;
import com.viber.voip.market.w;
import com.viber.voip.process.b;
import com.viber.voip.process.c;

public class g
  extends c
{
  private static final String a = g.class.getSimpleName();
  private w b;
  
  public void a(bt parambt, w paramw)
  {
    this.b = paramw;
    Bundle localBundle = new Bundle();
    localBundle.putString("product_id", parambt.toString());
    execute(ViberApplication.getInstance(), g.class, localBundle);
  }
  
  public void doInTargetProcess(Bundle paramBundle, b paramb)
  {
    bt localbt = bt.a(paramBundle.getString("product_id"));
    MarketApi.a().a(localbt, new h(this, paramb));
  }
  
  public void processResult(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      bt localbt = bt.a(paramBundle.getString("product_id"));
      v localv = v.values()[paramBundle.getInt("product_status")];
      this.b.a(localbt, localv);
      return;
    }
    ViberApplication.log(3, a, "processResult: ERROR: null result received!");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.a.g
 * JD-Core Version:    0.7.0.1
 */