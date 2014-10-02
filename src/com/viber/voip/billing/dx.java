package com.viber.voip.billing;

class dx
  implements v
{
  dx(dt paramdt, bu parambu) {}
  
  public void a(r paramr)
  {
    if (paramr.a())
    {
      q localq = a.a().a(this.a.d());
      if (localq != null)
      {
        dt.a(this.b, "processCommerceAnalyticsForOrder(), product fetched, name:" + localq.c());
        this.b.a(this.a, localq.c(), "Viber Out credits", (1000000.0D * localq.e()), localq.d());
      }
    }
    else
    {
      return;
    }
    dt.a(this.b, "processCommerceAnalyticsForOrder(), prod is null");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.dx
 * JD-Core Version:    0.7.0.1
 */