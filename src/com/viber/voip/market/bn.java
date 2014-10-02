package com.viber.voip.market;

import com.viber.voip.ViberApplication;
import com.viber.voip.billing.a;
import com.viber.voip.billing.bp;
import com.viber.voip.billing.bt;
import com.viber.voip.stickers.c.d;
import com.viber.voip.stickers.r;

public class bn
  implements bj
{
  private static final String a = bn.class.getSimpleName();
  private r b;
  private MarketApi c;
  
  public bn(MarketApi paramMarketApi)
  {
    this.c = paramMarketApi;
    this.b = r.a();
  }
  
  private static void b(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private boolean d(bt parambt)
  {
    return true;
  }
  
  private void e(bt parambt)
  {
    a.a().a(parambt, new bo(this));
  }
  
  public boolean a(bt parambt)
  {
    return parambt.a() == bp.b;
  }
  
  public void b(bt parambt)
  {
    int i = parambt.b();
    if ((!this.b.e(i)) && (!this.b.d(i)) && (!this.b.c(i)))
    {
      this.b.i(i);
      e(parambt);
    }
  }
  
  public v c(bt parambt)
  {
    int i = parambt.b();
    d locald = this.b.b(i);
    if ((locald != null) && (locald.h())) {
      return v.e;
    }
    if (this.b.c(i)) {
      return v.d;
    }
    if (this.b.d(i))
    {
      this.b.g(i);
      return v.c;
    }
    if (d(parambt)) {
      return v.b;
    }
    return v.a;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.bn
 * JD-Core Version:    0.7.0.1
 */