package com.viber.voip.rakuten;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.viber.voip.dc;
import com.viber.voip.dk;

class c
  extends WebViewClient
{
  c(RakutenAccountWebViewActivity paramRakutenAccountWebViewActivity) {}
  
  private void a(String paramString)
  {
    dc.a(dk.a).post(new d(this, paramString));
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    RakutenAccountWebViewActivity.a("WebViewClient.onPageStarted, url: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    if (paramString.startsWith("viber://"))
    {
      paramWebView.stopLoading();
      a(paramString);
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    RakutenAccountWebViewActivity.a("WebViewClient.onReceiveError, code:" + paramInt);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    RakutenAccountWebViewActivity.a("WebViewClient.shouldOverrideUrlLoading " + paramString);
    if ((paramString.startsWith("http:")) || (paramString.startsWith("https:")))
    {
      paramWebView.loadUrl(paramString);
      return false;
    }
    if (paramString.startsWith("viber:"))
    {
      a(paramString);
      return true;
    }
    if (paramString.startsWith("mailto:"))
    {
      RakutenAccountWebViewActivity.a(this.a, paramString);
      return true;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW").setData(Uri.parse(paramString));
    this.a.startActivity(localIntent);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.rakuten.c
 * JD-Core Version:    0.7.0.1
 */