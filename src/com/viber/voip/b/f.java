package com.viber.voip.b;

import android.os.Handler;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.sms.i;
import com.viber.voip.sms.s;
import java.io.IOException;

class f
  implements i
{
  String a;
  String b;
  String c;
  String d;
  long e;
  private Handler g = dc.a(dk.d);
  private Runnable h = new g(this);
  
  private f(a parama) {}
  
  private void a(boolean paramBoolean)
  {
    a.c("SmsChecker.sendSmsResult isCreateSms:" + paramBoolean);
    try
    {
      a locala = this.f;
      String str1 = this.a;
      long l = this.e;
      String str2 = this.d;
      if (paramBoolean) {}
      for (int i = 0;; i = 14)
      {
        a.a(locala, str1, l, str2, i);
        return;
      }
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public void a(int paramInt, String paramString1, String paramString2)
  {
    a.c("SmsChecker.onNewSms smsNumber:" + paramString1 + " smsBody:" + paramString2);
    if ((TextUtils.equals(paramString1, this.b)) && (TextUtils.equals(this.c, paramString2)))
    {
      a.c("SmsChecker.onNewSms Insert smsNumber:" + paramString1 + " smsBody:" + paramString2);
      this.g.removeCallbacks(this.h);
      ViberApplication.getInstance().getSmsDbManager().b(this);
      a(true);
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3, long paramLong, String paramString4)
  {
    a.c("SmsChecker.startCheck srcPhone:" + paramString2 + " text:" + paramString3);
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.e = paramLong;
    this.d = paramString4;
    this.g.postDelayed(this.h, 2000L);
    ViberApplication.getInstance().getSmsDbManager().a(this);
    s.a(ViberApplication.getInstance().getApplicationContext(), this.b, this.c);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.b.f
 * JD-Core Version:    0.7.0.1
 */