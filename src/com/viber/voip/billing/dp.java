package com.viber.voip.billing;

import com.viber.voip.stickers.r;

public class dp
  extends co
{
  private static final String a = dp.class.getSimpleName();
  
  public dp(cr paramcr)
  {
    super(paramcr);
  }
  
  private void a(String paramString) {}
  
  private boolean b(bo parambo, bn parambn)
  {
    switch (parambo.a())
    {
    default: 
      return false;
    }
    a("handleError: already owned package " + parambn + ", starting full product sync...");
    c(parambn);
    bv.a(null);
    c().c();
    return true;
  }
  
  public void a(bo parambo, bn parambn)
  {
    a("onPurchaseError: " + parambn);
    if (!b(parambo, parambn)) {
      super.a(parambo, parambn);
    }
  }
  
  public void a(bo parambo, bu parambu)
  {
    a("onPurchaseError: " + parambu);
    if (!b(parambo, parambu.d())) {
      super.a(parambo, parambu);
    }
  }
  
  public void a(bu parambu)
  {
    a("onPurchaseSuccess: " + parambu);
    c().b(parambu);
    c().a();
    c().a(parambu, true);
  }
  
  public void a(bu parambu, cq paramcq)
  {
    a("performPurchaseVerificationAsync purchase: " + parambu);
    a("performPurchaseVerificationAsync signature: " + parambu.j());
    bv.a().c().a(parambu.d(), new dq(this, parambu, paramcq));
  }
  
  public void a(bu parambu, ds paramds)
  {
    a("onPurchaseVerificationCompleted " + parambu + ", result:" + paramds);
    super.a(parambu, paramds);
    if (paramds == ds.a)
    {
      c().c();
      int i = parambu.d().a().b();
      a("downloading package: " + i);
      r.a().i(i);
      parambu.c(false);
      c().b(parambu);
      a(parambu, parambu.d().toString(), "Stickers", 1990000L, "USD");
    }
  }
  
  public boolean a(bn parambn)
  {
    return parambn.a().a() == bp.b;
  }
  
  public void b()
  {
    c().a(0, 2131494237, null);
  }
  
  public void b(bu parambu)
  {
    a("onPurchaseRetry " + parambu);
    if (!parambu.k())
    {
      a("purchase not verified, verifying");
      c().a(parambu, true);
      return;
    }
    parambu.c(false);
    c().b(parambu);
  }
  
  public void c(bn parambn)
  {
    int i = parambn.a().b();
    a("synchronizePurchasedProduct " + parambn + " downloading package " + i);
    r.a().i(i);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.dp
 * JD-Core Version:    0.7.0.1
 */