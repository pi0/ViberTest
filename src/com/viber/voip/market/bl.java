package com.viber.voip.market;

import com.viber.voip.billing.bt;
import com.viber.voip.process.i;
import com.viber.voip.process.j;

class bl
  implements i
{
  bl(bk parambk) {}
  
  private bt d(j paramj)
  {
    return bt.a(paramj.a);
  }
  
  public void a(j paramj)
  {
    bk.a("onStickerPackageDownloadStarted: " + paramj.a);
    bk.a(this.a).a(d(paramj), v.d);
  }
  
  public void a(j paramj, int paramInt) {}
  
  public void a(boolean paramBoolean, j paramj)
  {
    bk.a("onDownloadError: " + paramj.a);
    bm localbm = bk.a(this.a);
    bt localbt = d(paramj);
    if (paramBoolean) {}
    for (v localv = v.b;; localv = v.c)
    {
      localbm.a(localbt, localv);
      return;
    }
  }
  
  public void b(j paramj)
  {
    bk.a("onStickerPackageDeployed: " + paramj.a);
    bk.a(this.a).a(d(paramj), v.e);
  }
  
  public void c(j paramj)
  {
    bk.a("onStickerPackageDownloadScheduled: " + paramj.a);
    bk.a(this.a).a(d(paramj), v.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.bl
 * JD-Core Version:    0.7.0.1
 */