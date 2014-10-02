package com.viber.voip.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;

public class NullCatcherWebView
  extends WebView
{
  public NullCatcherWebView(Context paramContext)
  {
    super(paramContext);
  }
  
  public NullCatcherWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public NullCatcherWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
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
 * Qualified Name:     com.viber.voip.widget.NullCatcherWebView
 * JD-Core Version:    0.7.0.1
 */