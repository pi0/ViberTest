package com.viber.voip.billing;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class by
  implements bj
{
  by(bv parambv, Runnable paramRunnable) {}
  
  public void a(bo parambo, bm parambm)
  {
    ArrayList localArrayList;
    if (parambo.c())
    {
      localArrayList = new ArrayList();
      Iterator localIterator = parambm.a().iterator();
      while (localIterator.hasNext())
      {
        bu localbu = parambm.b((bn)localIterator.next());
        if (localbu != null) {
          localArrayList.add(localbu);
        }
      }
      if (localArrayList.size() != 0) {
        break label96;
      }
      bv.a("Nothing to consume!");
      if (this.a != null) {
        this.a.run();
      }
    }
    return;
    label96:
    this.b.c().a(localArrayList, new bz(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.by
 * JD-Core Version:    0.7.0.1
 */