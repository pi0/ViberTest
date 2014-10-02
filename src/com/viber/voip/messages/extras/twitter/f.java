package com.viber.voip.messages.extras.twitter;

import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;

class f
  extends WebViewClient
{
  private f(c paramc) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    c.a(this.a, "onPageFinished() url=" + paramString);
    super.onPageFinished(paramWebView, paramString);
    String str = c.c(this.a).getTitle();
    if ((str != null) && (!TextUtils.isEmpty(str))) {
      c.d(this.a).setText(str);
    }
    try
    {
      c.b(this.a).dismiss();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    c.a(this.a, "onPageStarted() url=" + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    try
    {
      c.b(this.a).show();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    c.a(this.a, "onReceivedError() description=" + paramString1);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    c.a(this.a).b(paramString1);
    try
    {
      this.a.cancel();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    c.a(this.a, "shouldOverrideUrlLoading() url=" + paramString);
    Uri localUri = Uri.parse(paramString);
    if ((localUri != null) && (localUri.getScheme().equals("viber-twitter")))
    {
      String str = localUri.getQueryParameter("oauth_verifier");
      c.a(this.a).a(str);
      try
      {
        this.a.cancel();
        return true;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.f
 * JD-Core Version:    0.7.0.1
 */