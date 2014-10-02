package com.facebook.android;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;

class FbDialog$FbWebViewClient
  extends WebViewClient
{
  private FbDialog$FbWebViewClient(FbDialog paramFbDialog) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    try
    {
      String str = FbDialog.access$000(this.this$0).getTitle();
      if ((str != null) && (str.length() > 0)) {
        FbDialog.access$400(this.this$0).setText(str);
      }
      FbDialog.access$300(this.this$0).dismiss();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    Log.d("Facebook-WebView", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    try
    {
      FbDialog.access$300(this.this$0).show();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    FbDialog.access$100(this.this$0).onError(new DialogError(paramString1, paramInt, paramString2));
    this.this$0.dismiss();
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Log.d("Facebook-WebView", "Redirect URL: " + paramString);
    if (paramString.startsWith("fbconnect://success"))
    {
      Bundle localBundle = Util.parseUrl(paramString);
      String str = localBundle.getString("error");
      if (str == null) {
        str = localBundle.getString("error_type");
      }
      if (str == null) {
        FbDialog.access$100(this.this$0).onComplete(localBundle);
      }
      for (;;)
      {
        try
        {
          this.this$0.dismiss();
          return true;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return true;
        }
        if ((str.equals("access_denied")) || (str.equals("OAuthAccessDeniedException"))) {
          FbDialog.access$100(this.this$0).onCancel();
        } else {
          FbDialog.access$100(this.this$0).onFacebookError(new FacebookError(str));
        }
      }
    }
    if (paramString.startsWith("fbconnect://cancel"))
    {
      FbDialog.access$100(this.this$0).onCancel();
      this.this$0.dismiss();
      return true;
    }
    if (paramString.contains("touch")) {
      return false;
    }
    this.this$0.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.android.FbDialog.FbWebViewClient
 * JD-Core Version:    0.7.0.1
 */