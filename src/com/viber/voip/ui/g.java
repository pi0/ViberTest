package com.viber.voip.ui;

import android.webkit.WebView;
import android.webkit.WebViewClient;

class g
  extends WebViewClient
{
  g(GenericWebViewActivity paramGenericWebViewActivity) {}
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    GenericWebViewActivity.a("onReceiveError, code:" + paramInt);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.g
 * JD-Core Version:    0.7.0.1
 */