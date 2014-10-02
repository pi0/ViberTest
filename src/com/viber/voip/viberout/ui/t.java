package com.viber.voip.viberout.ui;

import android.app.ProgressDialog;
import com.viber.voip.billing.ae;
import com.viber.voip.billing.ah;
import com.viber.voip.billing.ai;

class t
  implements ai
{
  t(ViberOutDialogs paramViberOutDialogs, ProgressDialog[] paramArrayOfProgressDialog, boolean paramBoolean) {}
  
  public void a(ae paramae, ah paramah)
  {
    if ((this.a[0] != null) && (this.c.d()))
    {
      this.a[0].dismiss();
      if (paramah == null) {
        break label54;
      }
    }
    label54:
    for (String str = paramah.b; this.b; str = null)
    {
      ViberOutDialogs.a(this.c, paramae, str);
      return;
    }
    if (ViberOutDialogs.f())
    {
      this.c.a(paramae, str);
      return;
    }
    this.c.c(paramae);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.t
 * JD-Core Version:    0.7.0.1
 */