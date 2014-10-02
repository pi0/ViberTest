package com.facebook.widget;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.android.Util;
import com.facebook.internal.Utility;

class WebDialog$DialogWebViewClient
  extends WebViewClient
{
  private WebDialog$DialogWebViewClient(WebDialog paramWebDialog) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (!WebDialog.access$400(this.this$0)) {
      WebDialog.access$500(this.this$0).dismiss();
    }
    WebDialog.access$600(this.this$0).setBackgroundColor(0);
    WebDialog.access$700(this.this$0).setVisibility(0);
    WebDialog.access$800(this.this$0).setVisibility(0);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    Utility.logd("FacebookSDK.WebDialog", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    if (!WebDialog.access$400(this.this$0)) {
      WebDialog.access$500(this.this$0).show();
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    WebDialog.access$300(this.this$0, new FacebookDialogException(paramString1, paramInt, paramString2));
    this.this$0.dismiss();
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    WebDialog.access$300(this.this$0, new FacebookDialogException(null, -11, null));
    paramSslErrorHandler.cancel();
    this.this$0.dismiss();
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Utility.logd("FacebookSDK.WebDialog", "Redirect URL: " + paramString);
    Bundle localBundle;
    String str1;
    String str2;
    String str3;
    if (paramString.startsWith("fbconnect://success"))
    {
      localBundle = Util.parseUrl(paramString);
      str1 = localBundle.getString("error");
      if (str1 == null) {
        str1 = localBundle.getString("error_type");
      }
      str2 = localBundle.getString("error_msg");
      if (str2 == null) {
        str2 = localBundle.getString("error_description");
      }
      str3 = localBundle.getString("error_code");
      if (Utility.isNullOrEmpty(str3)) {
        break label286;
      }
    }
    for (;;)
    {
      try
      {
        int j = Integer.parseInt(str3);
        i = j;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        i = -1;
        continue;
        if ((str1 == null) || ((!str1.equals("access_denied")) && (!str1.equals("OAuthAccessDeniedException")))) {
          continue;
        }
        WebDialog.access$000(this.this$0);
        continue;
        FacebookRequestError localFacebookRequestError = new FacebookRequestError(i, str1, str2);
        WebDialog.access$300(this.this$0, new FacebookServiceException(localFacebookRequestError, str2));
        continue;
      }
      if ((Utility.isNullOrEmpty(str1)) && (Utility.isNullOrEmpty(str2)) && (i == -1))
      {
        WebDialog.access$200(this.this$0, localBundle);
        this.this$0.dismiss();
        return true;
      }
      if (paramString.startsWith("fbconnect://cancel"))
      {
        WebDialog.access$000(this.this$0);
        this.this$0.dismiss();
        return true;
      }
      if (paramString.contains("touch")) {
        return false;
      }
      this.this$0.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
      return true;
      label286:
      int i = -1;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.widget.WebDialog.DialogWebViewClient
 * JD-Core Version:    0.7.0.1
 */