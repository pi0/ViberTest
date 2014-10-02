package com.viber.voip.viberout;

import com.viber.voip.ViberApplication;
import com.viber.voip.dw;
import com.viber.voip.settings.l;

final class f
  implements dw
{
  public void a(ViberApplication paramViberApplication)
  {
    e.d("onAppReady");
    boolean bool = false | ViberApplication.preferences().b("VIBER_OUT_ENABLED", false);
    e.g().a(bool);
    e.a(e.g());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.f
 * JD-Core Version:    0.7.0.1
 */