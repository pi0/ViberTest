package com.viber.voip.billing;

class ce
  implements bh
{
  ce(bv parambv, co paramco, bn parambn) {}
  
  public void a(bo parambo, bu parambu)
  {
    bv.a("onIabPurchaseFinished, response code:" + parambo.a());
    bv.c(this.c);
    switch (parambo.a())
    {
    default: 
      if (parambu != null)
      {
        this.a.a(parambo, parambu);
        return;
      }
      break;
    case 0: 
      this.a.a(parambu);
      return;
    case 1: 
      this.a.b(this.b);
      return;
    }
    this.a.a(parambo, this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.ce
 * JD-Core Version:    0.7.0.1
 */