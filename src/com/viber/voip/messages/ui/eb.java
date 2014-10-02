package com.viber.voip.messages.ui;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.ptt.PttController;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.ad;
import com.viber.voip.a.bc;
import java.util.Timer;

class eb
  implements Runnable
{
  private eb(PttViewController paramPttViewController) {}
  
  public void run()
  {
    if (PttViewController.b(this.a) != null)
    {
      int i = ViberApplication.getInstance().getPhoneController(true).generateSequence();
      PttViewController.b(this.a).handleStartRecordPtt(i);
      PttViewController.a(this.a, new ea(this.a, null));
      PttViewController.a(this.a, new Timer("PttTimer"));
      PttViewController.e(this.a).schedule(PttViewController.d(this.a), 30000L);
      bc.a().a(a.r.f());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.eb
 * JD-Core Version:    0.7.0.1
 */