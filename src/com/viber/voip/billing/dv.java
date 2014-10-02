package com.viber.voip.billing;

class dv
  implements bk
{
  dv(dt paramdt, bu parambu, cq paramcq) {}
  
  public void a(bo parambo, bm parambm)
  {
    if (parambo.c())
    {
      bq localbq = parambm.a(this.a.d());
      if (localbq != null)
      {
        a.a().a(this.a, localbq, new dw(this));
        return;
      }
      dt.a(this.c, "ALERT!!! productDetails is null for product " + this.a.d());
      this.b.a(ds.c);
      return;
    }
    dt.a(this.c, "query product details failed for product " + this.a.d());
    this.b.a(ds.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.dv
 * JD-Core Version:    0.7.0.1
 */