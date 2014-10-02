package com.viber.voip.billing;

import com.google.analytics.tracking.android.Transaction;
import com.google.analytics.tracking.android.Transaction.Builder;
import com.google.analytics.tracking.android.Transaction.Item.Builder;
import com.viber.voip.a.bc;

public class co
{
  private static final String a = co.class.getSimpleName();
  private cr b;
  
  public co(cr paramcr)
  {
    this.b = paramcr;
  }
  
  private void a(String paramString) {}
  
  public void a()
  {
    c().b();
  }
  
  void a(bo parambo)
  {
    bv.a().a(parambo);
  }
  
  public void a(bo parambo, bn parambn)
  {
    a("onPurchaseError: " + parambn);
    a(parambo);
  }
  
  public void a(bo parambo, bu parambu)
  {
    a("onPurchaseError: " + parambu);
    a(parambo);
  }
  
  public void a(bu parambu)
  {
    a("onPurchaseSuccess: " + parambu);
    c().a();
    c().b(parambu);
  }
  
  public void a(bu parambu, cq paramcq)
  {
    paramcq.a(ds.c);
  }
  
  public void a(bu parambu, ds paramds)
  {
    a("onPurchaseVerificationCompleted: " + parambu + ", result: " + paramds);
    switch (cp.a[paramds.ordinal()])
    {
    default: 
    case 1: 
    case 2: 
      do
      {
        do
        {
          return;
          parambu.a(true);
          c().b(parambu);
        } while (!parambu.o());
        bv.a().d().b(parambu);
        return;
        parambu.c(false);
        c().b(parambu);
        if (!parambu.o()) {
          b();
        }
      } while (!parambu.o());
      bv.a().d().b(parambu);
      return;
    }
    if (!parambu.o()) {
      a();
    }
    c().c(parambu);
  }
  
  protected void a(bu parambu, String paramString1, String paramString2, long paramLong, String paramString3)
  {
    String str = parambu.b();
    if ("transactionId.android.test.purchased".equals(str)) {
      str = "test" + System.currentTimeMillis();
    }
    a("ANALYTICS TRANSACTION BEGIN ===========");
    a("Transaction id: " + str);
    a("Product price (micros): " + paramLong);
    a("Affiliation: In-App Store");
    a("TotalTaxInMicros: 0");
    a("ShippingCostInMicros: 0");
    a("CurrencyCode: " + paramString3);
    a("ITEM");
    a("  Product id: " + parambu.d());
    a("  Product name: " + paramString1);
    a("  Product price (micros): " + paramLong);
    a("  Product quantity: 1");
    a("  Product category: " + paramString2);
    a("ANALYTICS TRANSACTION END =============");
    Transaction localTransaction = new Transaction.Builder(str, paramLong).setAffiliation("In-App Store").setTotalTaxInMicros(0L).setShippingCostInMicros(0L).setCurrencyCode(paramString3).build();
    localTransaction.addItem(new Transaction.Item.Builder(parambu.d().toString(), paramString1, paramLong, 1L).setProductCategory(paramString2).build());
    bc.a().a(localTransaction);
    a("Analytics Transaction: " + localTransaction);
    bc.a().a(localTransaction);
  }
  
  public boolean a(bn parambn)
  {
    return false;
  }
  
  public void b()
  {
    c().b();
  }
  
  public void b(bn parambn)
  {
    a("onPurchaseCancelled: " + parambn);
    c().c();
  }
  
  public void b(bu parambu)
  {
    a("onPurchaseRetry: " + parambu);
  }
  
  protected cr c()
  {
    return this.b;
  }
  
  public void c(bn parambn) {}
  
  public void c(bu parambu)
  {
    a("onPurchaseConsumed: " + parambu);
    parambu.b(true);
    parambu.c(false);
    c().b(parambu);
  }
  
  public ds d(bu parambu)
  {
    a("performPurchaseVerification: " + parambu);
    return ds.c;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.co
 * JD-Core Version:    0.7.0.1
 */