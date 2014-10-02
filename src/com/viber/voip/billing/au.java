package com.viber.voip.billing;

import android.os.Handler;
import java.util.List;

class au
  extends bl
{
  au(ap paramap, String paramString, boolean paramBoolean, List paramList, bj parambj)
  {
    super(paramap, paramString);
  }
  
  public void a()
  {
    localbo = new bo(0, "Inventory refresh successful.");
    try
    {
      bm localbm2 = ap.a(this.d, this.a, this.b);
      localbm1 = localbm2;
    }
    catch (ao localao)
    {
      for (;;)
      {
        localbo = localao.a();
        bm localbm1 = null;
      }
    }
    ap.b(this.d).post(new av(this, localbo, localbm1));
  }
  
  void a(bo parambo)
  {
    bm localbm = new bm();
    ap.b(this.d).post(new aw(this, parambo, localbm));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.billing.au
 * JD-Core Version:    0.7.0.1
 */