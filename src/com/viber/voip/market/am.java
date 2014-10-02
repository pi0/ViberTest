package com.viber.voip.market;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.JavascriptInterface;

class am
{
  private am(ak paramak) {}
  
  @JavascriptInterface
  public void downloadProduct(String paramString)
  {
    downloadProduct(paramString, null);
  }
  
  @JavascriptInterface
  public void downloadProduct(String paramString1, String paramString2)
  {
    ak.a(this.a, new av(this, paramString1, paramString2));
  }
  
  @JavascriptInterface
  public void followPublicGroup(String paramString1, String paramString2)
  {
    ak.a(this.a, new ap(this, paramString1, paramString2));
  }
  
  @JavascriptInterface
  public void getClientInfo()
  {
    ak.a(this.a, new bb(this));
  }
  
  @JavascriptInterface
  public void getProductStatus(String paramString)
  {
    ak.a(this.a, new an(this, paramString));
  }
  
  @JavascriptInterface
  public void getProductsInfo(String paramString)
  {
    ak.a(this.a, new ax(this, paramString));
  }
  
  @JavascriptInterface
  public void getUserPublicGroups()
  {
    ak.a(this.a, new bd(this));
  }
  
  @JavascriptInterface
  public void log(String paramString)
  {
    ak.a("WEBLOG: " + paramString);
  }
  
  @JavascriptInterface
  public void openBrowser(String paramString)
  {
    log("openGrowser " + paramString);
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    ak.c(this.a).startActivity(localIntent);
  }
  
  @JavascriptInterface
  public void purchaseProduct(String paramString)
  {
    purchaseProduct(paramString, null);
  }
  
  @JavascriptInterface
  public void purchaseProduct(String paramString1, String paramString2)
  {
    ak.a(this.a, new aw(this, paramString1, paramString2));
  }
  
  @JavascriptInterface
  public void setBarTitle(String paramString)
  {
    ak.a(this.a, new az(this, paramString));
  }
  
  @JavascriptInterface
  public void setLoadingPageStatus(int paramInt)
  {
    ak.a(this.a, new ba(this, paramInt));
  }
  
  @JavascriptInterface
  public void unfollowPublicGroup(String paramString1, String paramString2)
  {
    ak.a(this.a, new as(this, paramString1, paramString2));
  }
  
  @JavascriptInterface
  public void viewPublicGroup(String paramString1, String paramString2)
  {
    ak.a(this.a, new bf(this, paramString1, paramString2));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.market.am
 * JD-Core Version:    0.7.0.1
 */