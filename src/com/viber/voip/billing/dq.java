package com.viber.voip.billing;

class dq
  implements bk
{
  dq(dp paramdp, bu parambu, cq paramcq) {}
  
  public void a(bo parambo, bm parambm)
  {
    if (parambo.c())
    {
      bq localbq = parambm.a(this.a.d());
      if (localbq == null)
      {
        dp.a(this.c, "ALERT!!! productDetails is null for product " + this.a.d());
        this.b.a(ds.c);
        return;
      }
      a.a().a(this.a, localbq, new dr(this));
      return;
    }
    dp.a(this.c, "ALERT!!! failed querying product details for product " + this.a.d());
    this.b.a(ds.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.dq
 * JD-Core Version:    0.7.0.1
 */