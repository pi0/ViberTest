package com.viber.voip.viberout.ui;

import android.webkit.WebView;
import com.actionbarsherlock.ActionBarSherlock;
import com.viber.voip.billing.s;
import com.viber.voip.billing.y;

class bc
  implements y
{
  bc(ViberOutWebViewActivity paramViberOutWebViewActivity) {}
  
  public void a(String paramString, s params)
  {
    ViberOutWebViewActivity.a("page load error " + paramString + " error: " + params);
    ViberOutWebViewActivity.a(this.a, params);
  }
  
  public void a(String paramString1, String paramString2)
  {
    ViberOutWebViewActivity.a("page ready: " + paramString1 + ", loading data into view");
    ViberOutWebViewActivity.b(this.a).setProgressBarIndeterminateVisibility(false);
    if ((paramString1 != null) && (paramString2 != null)) {
      ViberOutWebViewActivity.c(this.a).loadDataWithBaseURL(paramString1, paramString2, null, null, null);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.bc
 * JD-Core Version:    0.7.0.1
 */