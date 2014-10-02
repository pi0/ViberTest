package com.viber.voip.viberout.ui;

import android.app.ProgressDialog;
import com.viber.voip.billing.a;
import com.viber.voip.billing.n;
import com.viber.voip.billing.q;

class ah
  implements n
{
  ah(ag paramag) {}
  
  public void a()
  {
    if ((this.a.a[0] != null) && (this.a.b.e.d()))
    {
      this.a.a[0].dismiss();
      a.a().a(this.a.b.c.b(), this.a.b.d);
      this.a.b.e.finish();
    }
  }
  
  public void a(int paramInt)
  {
    ViberOutDialogs.a("Error purchasing " + this.a.b.c.b() + ", billing service health problem");
    if (this.a.a[0] != null)
    {
      this.a.a[0].dismiss();
      ViberOutDialogs.a(this.a.b.e, 2131494233, 2131494241, ViberOutDialogs.a(this.a.b.e));
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ah
 * JD-Core Version:    0.7.0.1
 */