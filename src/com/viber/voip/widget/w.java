package com.viber.voip.widget;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.ptt.PttController;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.ad;
import com.viber.voip.a.bc;
import com.viber.voip.util.gj;

class w
  implements Runnable
{
  w(PttLayout paramPttLayout) {}
  
  public void run()
  {
    if (PttLayout.a(this.a).J()) {
      return;
    }
    String str = PttLayout.a(this.a).H();
    if (gj.c(str))
    {
      PttLayout.a("Can't play ptt message. Ptt id is empty!");
      return;
    }
    if (PttLayout.b(this.a))
    {
      PttLayout.c(this.a).b(PttLayout.a(this.a).H(), true);
      return;
    }
    if ((PttLayout.a(this.a).p()) && (PttLayout.a(this.a).R() == 4))
    {
      ViberApplication.getInstance().getPhoneController(true).getPttController().handleDownloadPtt(PttLayout.a(this.a).I());
      return;
    }
    if (PttLayout.a(this.a).p()) {
      bc.a().a(com.viber.voip.a.a.r.g());
    }
    for (;;)
    {
      PttLayout.a("play ptt message. pttId=" + str);
      PttLayout.c(this.a).a(str, true);
      return;
      bc.a().a(com.viber.voip.a.a.r.h());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.w
 * JD-Core Version:    0.7.0.1
 */