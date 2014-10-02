package com.viber.voip;

import com.viber.logger.QaLogger;
import com.viber.logger.QaLogger.QaNotificationEvent;
import com.viber.voip.util.ag;
import com.viber.voip.util.at;

class cc
  implements ag
{
  cc(SystemDialogActivity paramSystemDialogActivity, String paramString) {}
  
  public void a(String paramString1, String paramString2)
  {
    String str = this.b.getString(2131493991, new Object[] { paramString2, paramString2 });
    QaLogger.a(new QaLogger.QaNotificationEvent("", str));
    at.a(this.b, 0, str, new cd(this), new ce(this), 2131493550, false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.cc
 * JD-Core Version:    0.7.0.1
 */