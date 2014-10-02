package com.viber.voip.market;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class n
  extends WebViewClient
{
  private n(MarketActivity paramMarketActivity) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    MarketActivity.a(this.a, "onPageFinished() url=" + paramString);
    super.onPageFinished(paramWebView, paramString);
    MarketActivity.c(this.a, false);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    MarketActivity.a(this.a, "onPageStarted() url=" + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    MarketActivity.c(this.a, true);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    MarketActivity.a(this.a, "onReceivedError() description=" + paramString1);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    MarketActivity.a(this.a, "shouldOverrideUrlLoading() url=" + paramString);
    paramWebView.loadUrl(paramString);
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.n
 * JD-Core Version:    0.7.0.1
 */