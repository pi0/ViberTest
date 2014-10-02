package com.viber.voip.viberout.ui;

import android.webkit.WebView;
import android.webkit.WebViewClient;

class bb
  extends WebViewClient
{
  bb(ViberOutWebViewActivity paramViberOutWebViewActivity) {}
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    ViberOutWebViewActivity.a("WebViewClient.onReceiveError, code:" + paramInt);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    ViberOutWebViewActivity.a("WebViewClient.shouldOverrideUrlLoading");
    paramWebView.loadUrl(paramString);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.bb
 * JD-Core Version:    0.7.0.1
 */