package com.viber.voip.rakuten;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.actionbarsherlock.ActionBarSherlock;

class b
  extends WebChromeClient
{
  b(RakutenAccountWebViewActivity paramRakutenAccountWebViewActivity) {}
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (paramInt < 100) {}
    for (boolean bool = true;; bool = false)
    {
      RakutenAccountWebViewActivity.g(this.a).setProgressBarIndeterminateVisibility(bool);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.rakuten.b
 * JD-Core Version:    0.7.0.1
 */