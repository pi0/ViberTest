package com.viber.voip.billing;

import java.util.Iterator;
import java.util.List;

class bz
  implements bg
{
  bz(by paramby) {}
  
  public void a(List<bu> paramList, List<bo> paramList1)
  {
    bv.a("onConsumeMultiFinished ======");
    Iterator localIterator = paramList1.iterator();
    while (localIterator.hasNext())
    {
      bo localbo = (bo)localIterator.next();
      bv.a("IabResult, success: " + localbo.c());
    }
    if (this.a.a != null) {
      this.a.a.run();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.bz
 * JD-Core Version:    0.7.0.1
 */