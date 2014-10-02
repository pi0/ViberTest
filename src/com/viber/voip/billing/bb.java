package com.viber.voip.billing;

import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class bb
  extends bl
{
  bb(ap paramap, String paramString, List paramList, bf parambf, bg parambg)
  {
    super(paramap, paramString);
  }
  
  public void a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      bu localbu = (bu)localIterator.next();
      try
      {
        ap.a(this.d, localbu);
        localArrayList.add(new bo(0, "Successful consume of productId " + localbu.d()));
      }
      catch (ao localao)
      {
        localArrayList.add(localao.a());
      }
    }
    if (this.b != null) {
      ap.b(this.d).post(new bc(this, localArrayList));
    }
    if (this.c != null) {
      ap.b(this.d).post(new bd(this, localArrayList));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.bb
 * JD-Core Version:    0.7.0.1
 */