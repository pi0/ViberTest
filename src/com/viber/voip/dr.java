package com.viber.voip;

import com.viber.dexshared.CrashlyticsHelper;
import com.viber.voip.c.f;

class dr
  implements f
{
  dr(ViberApplication paramViberApplication) {}
  
  public void onDexLoaded()
  {
    ViberApplication.access$402(this.a, ViberEnv.newCrashlyticsHelper());
    ViberApplication.access$400(this.a).setDebug(false);
    ViberApplication.access$400(this.a).start(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.dr
 * JD-Core Version:    0.7.0.1
 */