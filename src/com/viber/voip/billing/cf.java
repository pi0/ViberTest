package com.viber.voip.billing;

import android.content.Context;

class cf
  implements cr
{
  cf(bv parambv) {}
  
  public void a() {}
  
  public void a(int paramInt1, int paramInt2, String paramString)
  {
    bv.a(this.a, paramInt1, paramInt2, paramString);
  }
  
  public void a(bu parambu)
  {
    this.a.c().a(parambu, new ci(this));
  }
  
  public void a(bu parambu, boolean paramBoolean)
  {
    bv.a("verifyPurchase: " + parambu + ", async: " + paramBoolean);
    co localco = bv.a(this.a, parambu);
    if (paramBoolean)
    {
      localco.a(parambu, new cg(this, localco, parambu));
      return;
    }
    new ch(this, localco, parambu).execute(new Void[0]);
  }
  
  public void a(String paramString)
  {
    PurchaseSupportActivity.a(paramString);
  }
  
  public void b()
  {
    this.a.f();
  }
  
  public void b(bu parambu)
  {
    bv.d(this.a).a(parambu);
  }
  
  public void c() {}
  
  public void c(bu parambu)
  {
    this.a.d().a(parambu);
  }
  
  public Context d()
  {
    return bv.e(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.cf
 * JD-Core Version:    0.7.0.1
 */