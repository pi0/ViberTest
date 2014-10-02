package com.viber.voip.pixie;

import com.viber.voip.ViberApplication;
import com.viber.voip.process.a.d;

class PixieControllerImpl$6
  extends d
{
  PixieControllerImpl$6(PixieControllerImpl paramPixieControllerImpl) {}
  
  public void onReply(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean) {
      PixieControllerImpl.setupClientToUseLocalProxy(paramInt);
    }
    PixieControllerImpl.access$600(this.this$0);
    ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: client-only setup done, useLocalProxy: " + paramBoolean + ", localProxyPort: " + paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.pixie.PixieControllerImpl.6
 * JD-Core Version:    0.7.0.1
 */