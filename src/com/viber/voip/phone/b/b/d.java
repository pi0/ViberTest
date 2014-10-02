package com.viber.voip.phone.b.b;

import android.view.View;
import android.view.View.OnClickListener;
import com.viber.jni.secure.SecureCallsController;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;

class d
  implements View.OnClickListener
{
  d(c paramc) {}
  
  public void onClick(View paramView)
  {
    if (c.a(this.a) != null)
    {
      n localn = c.a(this.a).d();
      if (localn != null)
      {
        c.b(this.a).handleSecureCallVerified(localn.h(), localn.i());
        this.a.dismiss();
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.b.d
 * JD-Core Version:    0.7.0.1
 */