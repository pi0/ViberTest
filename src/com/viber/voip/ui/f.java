package com.viber.voip.ui;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.actionbarsherlock.ActionBarSherlock;

class f
  extends WebChromeClient
{
  f(GenericWebViewActivity paramGenericWebViewActivity) {}
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (paramInt < 100) {}
    for (boolean bool = true;; bool = false)
    {
      GenericWebViewActivity.a(this.a).setProgressBarIndeterminateVisibility(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.f
 * JD-Core Version:    0.7.0.1
 */