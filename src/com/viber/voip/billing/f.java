package com.viber.voip.billing;

import java.util.ArrayList;

class f
  implements bk
{
  f(a parama, r paramr, v paramv) {}
  
  public void a(bo parambo, bm parambm)
  {
    if (parambo.c())
    {
      ArrayList localArrayList = new ArrayList();
      q[] arrayOfq = this.a.a;
      int i = arrayOfq.length;
      int j = 0;
      if (j < i)
      {
        q localq = arrayOfq[j];
        bq localbq = parambm.a(q.a(localq));
        if (localbq != null)
        {
          a.b("Product: " + q.a(localq) + " price: " + localbq.b());
          localq.a(localbq.b());
          localArrayList.add(localq);
        }
        for (;;)
        {
          j++;
          break;
          a.b("ALERT! product details missing product: " + q.a(localq));
        }
      }
      this.a.a = ((q[])localArrayList.toArray(new q[localArrayList.size()]));
    }
    for (;;)
    {
      this.b.a(this.a);
      return;
      a.b("queryProductDetailsAsync failed");
      r.a(this.a, parambo);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.f
 * JD-Core Version:    0.7.0.1
 */