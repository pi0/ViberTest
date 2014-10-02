package com.viber.voip.sms;

import com.viber.voip.h.b;

class r
  implements Runnable
{
  r(SmsReplyActivity paramSmsReplyActivity) {}
  
  public void run()
  {
    SmsReplyActivity.a(this.a, "SmsReplyActivity Handler Activity finish");
    if ((SmsReplyActivity.i(this.a)) && (!b.d().a()))
    {
      s.a(SmsReplyActivity.a(this.a), SmsReplyActivity.c(this.a), SmsReplyActivity.j(this.a), false, null);
      this.a.finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sms.r
 * JD-Core Version:    0.7.0.1
 */