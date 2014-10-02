package com.viber.voip.sms;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class q
  implements View.OnTouchListener
{
  q(SmsReplyActivity paramSmsReplyActivity) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    SmsReplyActivity.a(this.a, "SmsReplyActivity onTouch, timeout disable");
    SmsReplyActivity.h(this.a).removeCallbacks(SmsReplyActivity.g(this.a));
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sms.q
 * JD-Core Version:    0.7.0.1
 */