package com.viber.voip.billing;

class du
  implements bk
{
  du(dt paramdt, bu parambu) {}
  
  public void a(bo parambo, bm parambm)
  {
    int i;
    if (parambo.c())
    {
      bq localbq = parambm.a(this.a.d());
      if (localbq != null)
      {
        String str = localbq.b();
        ae localae = dt.d();
        dt.b(null);
        PurchaseSupportActivity.a(str, localae);
        i = 1;
      }
    }
    for (;;)
    {
      if (i == 0) {
        this.b.c().c();
      }
      this.b.c().a(this.a);
      return;
      dt.a(this.b, "ALERT!!! productDetails is null for product " + this.a.d());
      i = 0;
      continue;
      dt.a(this.b, "ALERT!!! failed to query product details for product " + this.a.d());
      i = 0;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.du
 * JD-Core Version:    0.7.0.1
 */