package com.viber.voip.market;

import android.os.Handler;
import com.actionbarsherlock.app.ActionBar;
import com.viber.voip.process.i;
import com.viber.voip.process.j;

class l
  implements i
{
  l(MarketActivity paramMarketActivity) {}
  
  public void a(j paramj)
  {
    if (paramj.a == 400) {}
    do
    {
      return;
      MarketActivity.f(this.a).removeCallbacks(MarketActivity.e(this.a));
    } while (MarketActivity.b(this.a));
    ActionBar localActionBar = this.a.getSupportActionBar();
    MarketActivity localMarketActivity = this.a;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramj.b;
    arrayOfObject[1] = "0 %";
    localActionBar.setSubtitle(localMarketActivity.getString(2131494390, arrayOfObject));
  }
  
  public void a(j paramj, int paramInt)
  {
    MarketActivity.f(this.a).removeCallbacks(MarketActivity.e(this.a));
    if ((MarketActivity.b(this.a)) || (paramj.a == 400)) {
      return;
    }
    MarketActivity localMarketActivity2;
    Object[] arrayOfObject2;
    if (paramInt < 100)
    {
      localMarketActivity2 = this.a;
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = paramj.b;
      arrayOfObject2[1] = (paramInt + " %");
    }
    MarketActivity localMarketActivity1;
    Object[] arrayOfObject1;
    for (String str = localMarketActivity2.getString(2131494390, arrayOfObject2);; str = localMarketActivity1.getString(2131494391, arrayOfObject1))
    {
      this.a.getSupportActionBar().setSubtitle(str);
      return;
      localMarketActivity1 = this.a;
      arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramj.b;
    }
  }
  
  public void a(boolean paramBoolean, j paramj)
  {
    MarketActivity.f(this.a).removeCallbacks(MarketActivity.e(this.a));
    if ((MarketActivity.b(this.a)) || (paramj.a == 400)) {
      return;
    }
    ActionBar localActionBar = this.a.getSupportActionBar();
    MarketActivity localMarketActivity = this.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramj.b;
    localActionBar.setSubtitle(localMarketActivity.getString(2131494393, arrayOfObject));
    MarketActivity.f(this.a).postDelayed(MarketActivity.e(this.a), 5000L);
  }
  
  public void b(j paramj)
  {
    MarketActivity.f(this.a).removeCallbacks(MarketActivity.e(this.a));
    if ((MarketActivity.b(this.a)) || (paramj.a == 400)) {
      return;
    }
    ActionBar localActionBar = this.a.getSupportActionBar();
    MarketActivity localMarketActivity = this.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramj.b;
    localActionBar.setSubtitle(localMarketActivity.getString(2131494392, arrayOfObject));
    MarketActivity.f(this.a).postDelayed(MarketActivity.e(this.a), 5000L);
  }
  
  public void c(j paramj) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.l
 * JD-Core Version:    0.7.0.1
 */