package com.viber.voip.sms;

import android.view.View;
import android.widget.TextView;

class m
  implements Runnable
{
  m(l paraml, String paramString) {}
  
  public void run()
  {
    SmsReplyActivity.b(this.b.a).setVisibility(0);
    SmsReplyActivity.d(this.b.a).setText(SmsReplyActivity.c(this.b.a));
    SmsReplyActivity.e(this.b.a).setText(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sms.m
 * JD-Core Version:    0.7.0.1
 */