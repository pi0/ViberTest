package com.viber.voip.billing;

class dw
  implements am
{
  dw(dv paramdv) {}
  
  public void a(m paramm)
  {
    ds localds;
    if (paramm.a()) {
      localds = ds.a;
    }
    for (;;)
    {
      dt.a(this.a.c, "performPurchaseVerificationAsync finished. Success: " + paramm.a() + ", status:" + paramm.c() + ", result:" + localds);
      this.a.b.a(localds);
      return;
      if (paramm.c() == 104) {
        localds = ds.b;
      } else {
        localds = ds.c;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.dw
 * JD-Core Version:    0.7.0.1
 */