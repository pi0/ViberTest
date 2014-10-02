package com.viber.voip.phone.b;

import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.a.bc;
import com.viber.voip.a.g;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.util.gw;

class h
  implements View.OnClickListener
{
  private h(e parame) {}
  
  public void onClick(View paramView)
  {
    bc.a().a(e.a(this.a).k().h(e.a(this.a).f()));
    gw.a(paramView.getContext(), e.a(this.a).c().b(), e.a(this.a).f(), null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.h
 * JD-Core Version:    0.7.0.1
 */