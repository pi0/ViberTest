package com.viber.voip.billing;

import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import java.util.Iterator;
import java.util.List;

class cd
  implements bj
{
  cd(bv parambv, cj paramcj) {}
  
  public void a(bo parambo, bm parambm)
  {
    if (parambo.c())
    {
      Iterator localIterator = parambm.a().iterator();
      while (localIterator.hasNext())
      {
        bn localbn = (bn)localIterator.next();
        bv.a(this.b, localbn).c(localbn);
      }
      ViberApplication.preferences().a("PREF_MARKET_PRODUCTS_SYNCED", true);
    }
    for (;;)
    {
      if (this.a != null) {
        this.a.a(parambo.c());
      }
      return;
      bv.a("query inventory failed");
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.billing.cd
 * JD-Core Version:    0.7.0.1
 */