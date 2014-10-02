package com.viber.voip.k;

import com.viber.voip.ViberApplication;
import com.zoobe.sdk.helper.ZoobeHelper;

class g
  implements i
{
  g(a parama) {}
  
  public void a(ZoobeHelper paramZoobeHelper)
  {
    if (paramZoobeHelper != null) {
      ViberApplication.getInstance().sendBroadcast(paramZoobeHelper.getBackToViberIntent());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.k.g
 * JD-Core Version:    0.7.0.1
 */