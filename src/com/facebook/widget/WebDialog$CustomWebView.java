package com.facebook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;

public class WebDialog$CustomWebView
  extends WebView
{
  public WebDialog$CustomWebView(WebDialog paramWebDialog, Context paramContext)
  {
    super(paramContext);
  }
  
  public WebDialog$CustomWebView(WebDialog paramWebDialog, Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public WebDialog$CustomWebView(WebDialog paramWebDialog, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    try
    {
      super.onWindowFocusChanged(paramBoolean);
      return;
    }
    catch (NullPointerException localNullPointerException) {}
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.widget.WebDialog.CustomWebView
 * JD-Core Version:    0.7.0.1
 */