package com.viber.voip.viberout.ui;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.actionbarsherlock.ActionBarSherlock;

class ba
  extends WebChromeClient
{
  ba(ViberOutWebViewActivity paramViberOutWebViewActivity) {}
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (paramInt < 100) {}
    for (boolean bool = true;; bool = false)
    {
      ViberOutWebViewActivity.a(this.a).setProgressBarIndeterminateVisibility(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ba
 * JD-Core Version:    0.7.0.1
 */