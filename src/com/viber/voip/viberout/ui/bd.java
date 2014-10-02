package com.viber.voip.viberout.ui;

import android.webkit.WebView;
import com.viber.voip.billing.aa;
import com.viber.voip.billing.m;

class bd
  implements aa
{
  bd(ViberOutWebViewActivity paramViberOutWebViewActivity) {}
  
  public void a(m paramm)
  {
    if (paramm.a())
    {
      ViberOutWebViewActivity.a("Url loaded successfully:  " + paramm.d());
      ViberOutWebViewActivity.c(this.a).loadDataWithBaseURL(paramm.d(), paramm.e(), null, null, paramm.d());
      return;
    }
    ViberOutWebViewActivity.a("Url loading failed:  " + paramm.d());
    ViberOutWebViewActivity.a(this.a, paramm.b());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.bd
 * JD-Core Version:    0.7.0.1
 */