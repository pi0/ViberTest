package com.viber.voip.widget;

import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class al
  extends WebViewClient
{
  al(ViberWebViewActivity paramViberWebViewActivity) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    ViberWebViewActivity.a("onPageFinished() url=" + paramString);
    super.onPageFinished(paramWebView, paramString);
    try
    {
      ViberWebViewActivity.b(this.a).dismiss();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    ViberWebViewActivity.a("onPageStarted() url=" + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    try
    {
      ViberWebViewActivity.b(this.a).show();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    ViberWebViewActivity.a("onReceiveError, code:" + paramInt);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.al
 * JD-Core Version:    0.7.0.1
 */