package com.viber.voip.messages.ui.media;

import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.viber.voip.dc;
import com.viber.voip.dk;

class bo
  extends WebViewClient
{
  private bo(WebMapPreViewActivity paramWebMapPreViewActivity) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    dc.a(dk.a).postDelayed(new bp(this), 1500L);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.bo
 * JD-Core Version:    0.7.0.1
 */