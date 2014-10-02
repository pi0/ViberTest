package com.viber.voip.util;

import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class hg
  implements PhoneControllerWrapper.InitializedListener
{
  hg(ViberApplication paramViberApplication, String paramString, hj paramhj) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    PhoneControllerDelegate.ViberConnectionState localViberConnectionState = this.a.getPhoneController(false).getServiceState();
    hd.b("checkIsOnline serviceState=" + localViberConnectionState);
    if (this.b.toString().matches(fq.i.pattern()))
    {
      this.c.a(false, 5, this.b);
      return;
    }
    if (this.b.toString().matches(fq.j.pattern()))
    {
      this.c.a(false, 6, this.b);
      return;
    }
    if (localViberConnectionState == PhoneControllerDelegate.ViberConnectionState.SERVICE_CONNECTED)
    {
      if (!this.a.getPhoneController(false).isFastNetwork())
      {
        this.c.a(false, 3, this.b);
        return;
      }
      if (fq.g.matcher(this.b).matches())
      {
        this.a.getPhoneController(false).registerDelegate(new hh(this));
        hd.b("checkIsOnline - handleIsOnline");
        paramPhoneController.handleIsOnline(this.b.toString());
        return;
      }
      this.c.a(false, -1, this.b);
      return;
    }
    if (localViberConnectionState == PhoneControllerDelegate.ViberConnectionState.SERVICE_NOT_CONNECTED)
    {
      this.c.a(false, 2, this.b);
      return;
    }
    this.c.a(false, 4, this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.hg
 * JD-Core Version:    0.7.0.1
 */