package com.viber.voip.g;

import android.content.Context;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.bh;
import com.viber.voip.settings.l;

public class g
{
  public static a a(Context paramContext)
  {
    boolean bool1 = true;
    boolean bool2 = ViberApplication.preferences().b("proximity_turn_off_screen", bool1);
    if (!ViberApplication.getInstance().getDevicesManager().b()) {
      bool1 = false;
    }
    for (;;)
    {
      if (!bool1) {
        break label48;
      }
      return new h(paramContext);
      if (!bool2) {
        break;
      }
    }
    label48:
    return new c(paramContext);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.g.g
 * JD-Core Version:    0.7.0.1
 */