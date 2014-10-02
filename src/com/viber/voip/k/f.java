package com.viber.voip.k;

import com.viber.voip.ViberApplication;
import com.zoobe.sdk.helper.ZoobeHelper;

class f
  implements i
{
  f(a parama) {}
  
  public void a(ZoobeHelper paramZoobeHelper)
  {
    if (paramZoobeHelper != null) {
      ViberApplication.getInstance().sendBroadcast(paramZoobeHelper.getReleaseAudioIntent());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.k.f
 * JD-Core Version:    0.7.0.1
 */