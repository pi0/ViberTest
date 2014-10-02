package com.viber.voip.viberout.ui;

import android.app.ProgressDialog;
import com.viber.voip.billing.ap;
import com.viber.voip.billing.bj;
import com.viber.voip.billing.bm;
import com.viber.voip.billing.bo;
import com.viber.voip.billing.bu;
import com.viber.voip.billing.bv;
import com.viber.voip.billing.q;

class ai
  implements bj
{
  ai(ae paramae, ProgressDialog[] paramArrayOfProgressDialog, Runnable paramRunnable) {}
  
  public void a(bo parambo, bm parambm)
  {
    bu localbu;
    if ((this.a[0] != null) && (this.c.e.d()))
    {
      if (!parambo.c()) {
        break label135;
      }
      localbu = parambm.b(this.c.c.b());
      if (localbu == null)
      {
        ViberOutDialogs.a("No stale VO purchase for product " + this.c.c.b());
        this.b.run();
      }
    }
    else
    {
      return;
    }
    ViberOutDialogs.a("STALE VO purchase!!! " + localbu);
    ViberOutDialogs.a("Consuming...");
    bv.a().c().a(localbu, new aj(this));
    return;
    label135:
    this.a[0].dismiss();
    this.c.e.finish();
    bv.a().a(parambo);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ai
 * JD-Core Version:    0.7.0.1
 */