package com.viber.voip.billing;

import android.content.Context;
import com.viber.voip.viberout.ui.ViberOutActivity;

public class dt
  extends co
{
  private static ae a;
  private static final String b = dt.class.getSimpleName();
  
  public dt(cr paramcr)
  {
    super(paramcr);
  }
  
  public static void a(ae paramae)
  {
    a = paramae;
  }
  
  private void a(String paramString) {}
  
  private void e(bu parambu)
  {
    a("processCommerceAnalyticsForOrder(), productId: " + parambu.d() + ", fetching product info");
    a.a().a(new dx(this, parambu));
  }
  
  public void a()
  {
    cr localcr = c();
    com.viber.voip.a.a.z.getClass();
    localcr.a(2131494280, 2131494281, "619");
  }
  
  public void a(bu parambu)
  {
    a("onPurchaseSuccess: " + parambu);
    c().b(parambu);
    c().a(c().d().getString(2131494273));
    c().a(parambu, true);
  }
  
  public void a(bu parambu, cq paramcq)
  {
    bv.a().c().a(parambu.d(), new dv(this, parambu, paramcq));
  }
  
  public void a(bu parambu, ds paramds)
  {
    a("onPurchaseVerificationCompleted " + parambu + ", result:" + paramds);
    super.a(parambu, paramds);
    if (paramds == ds.a)
    {
      if (!parambu.o()) {
        bv.a().c().a(parambu.d(), new du(this, parambu));
      }
      ViberOutActivity.a();
      e(parambu);
    }
  }
  
  public boolean a(bn parambn)
  {
    return parambn.a().a() == bp.a;
  }
  
  public void b(bu parambu)
  {
    a("onPurchaseRetry " + parambu);
    if (!parambu.k())
    {
      c().a(parambu, true);
      return;
    }
    if (!parambu.l())
    {
      c().a(parambu);
      return;
    }
    parambu.c(false);
    c().b(parambu);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.dt
 * JD-Core Version:    0.7.0.1
 */