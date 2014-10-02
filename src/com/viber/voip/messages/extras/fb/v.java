package com.viber.voip.messages.extras.fb;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.util.ft;

class v
  implements Runnable
{
  v(s params, String paramString1, String paramString2) {}
  
  public void run()
  {
    if (s.a(this.c))
    {
      s.b("reportFacebookStatistics: already reported");
      return;
    }
    boolean bool1 = s.b(this.c).isInitialized();
    boolean bool2 = ft.b(s.c(this.c));
    s.b("reportFacebookStatistics: isInitialized=" + bool1 + " isOnline=" + bool2);
    if ((s.b(this.c).isInitialized()) && (ft.b(s.c(this.c))))
    {
      if (s.b(this.c).handleReportFacebookStatistics(this.a, this.b))
      {
        s.b("Facebook statistics: accessToken=" + this.b + " userId=" + this.a + " reported");
        this.c.a(true);
        return;
      }
      s.b("Unable to report Facebook statistics: accessToken=" + this.b + " userId=" + this.a + " handleReportFacebookStatistics returned false");
      return;
    }
    s.b("Unable to report Facebook statistics: accessToken=" + this.b + " userId=" + this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.v
 * JD-Core Version:    0.7.0.1
 */