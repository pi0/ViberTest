package com.facebook.widget;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.internal.Utility;

public class WebDialog
  extends Dialog
{
  static final String CANCEL_URI = "fbconnect://cancel";
  public static final int DEFAULT_THEME = 16973840;
  private static final String DISPLAY_TOUCH = "touch";
  private static final String LOG_TAG = "FacebookSDK.WebDialog";
  static final String REDIRECT_URI = "fbconnect://success";
  private static final String USER_AGENT = "user_agent";
  private FrameLayout contentFrameLayout;
  private ImageView crossImageView;
  private boolean isDetached = false;
  private boolean listenerCalled = false;
  private WebDialog.OnCompleteListener onCompleteListener;
  private ProgressDialog spinner;
  private String url;
  private WebDialog.CustomWebView webView;
  
  public WebDialog(Context paramContext, String paramString)
  {
    this(paramContext, paramString, 16973840);
  }
  
  public WebDialog(Context paramContext, String paramString, int paramInt)
  {
    super(paramContext, paramInt);
    this.url = paramString;
  }
  
  public WebDialog(Context paramContext, String paramString, Bundle paramBundle, int paramInt, WebDialog.OnCompleteListener paramOnCompleteListener)
  {
    super(paramContext, paramInt);
    if (paramBundle == null) {
      paramBundle = new Bundle();
    }
    paramBundle.putString("display", "touch");
    paramBundle.putString("type", "user_agent");
    this.url = Utility.buildUri("m.facebook.com", "dialog/" + paramString, paramBundle).toString();
    this.onCompleteListener = paramOnCompleteListener;
  }
  
  private void createCrossImage()
  {
    this.crossImageView = new ImageView(getContext());
    this.crossImageView.setOnClickListener(new WebDialog.3(this));
    Drawable localDrawable = getContext().getResources().getDrawable(2130838119);
    this.crossImageView.setImageDrawable(localDrawable);
    this.crossImageView.setVisibility(4);
  }
  
  private void sendCancelToListener()
  {
    sendErrorToListener(new FacebookOperationCanceledException());
  }
  
  private void sendErrorToListener(Throwable paramThrowable)
  {
    if ((this.onCompleteListener != null) && (!this.listenerCalled))
    {
      this.listenerCalled = true;
      if (!(paramThrowable instanceof FacebookException)) {
        break label43;
      }
    }
    label43:
    for (FacebookException localFacebookException = (FacebookException)paramThrowable;; localFacebookException = new FacebookException(paramThrowable))
    {
      this.onCompleteListener.onComplete(null, localFacebookException);
      return;
    }
  }
  
  private void sendSuccessToListener(Bundle paramBundle)
  {
    if ((this.onCompleteListener != null) && (!this.listenerCalled))
    {
      this.listenerCalled = true;
      this.onCompleteListener.onComplete(paramBundle, null);
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void setUpWebView(int paramInt)
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    this.webView = new WebDialog.CustomWebView(this, getContext());
    this.webView.setVerticalScrollBarEnabled(false);
    this.webView.setHorizontalScrollBarEnabled(false);
    this.webView.setWebViewClient(new WebDialog.DialogWebViewClient(this, null));
    this.webView.getSettings().setJavaScriptEnabled(true);
    this.webView.loadUrl(this.url);
    this.webView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    this.webView.setVisibility(4);
    this.webView.getSettings().setSavePassword(false);
    localLinearLayout.setPadding(paramInt, paramInt, paramInt, paramInt);
    localLinearLayout.addView(this.webView);
    this.contentFrameLayout.addView(localLinearLayout);
  }
  
  public void dismiss()
  {
    if (this.webView != null) {
      this.webView.stopLoading();
    }
    if (!this.isDetached)
    {
      if (this.spinner.isShowing()) {
        this.spinner.dismiss();
      }
      super.dismiss();
    }
  }
  
  public WebDialog.OnCompleteListener getOnCompleteListener()
  {
    return this.onCompleteListener;
  }
  
  public void onAttachedToWindow()
  {
    this.isDetached = false;
    super.onAttachedToWindow();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setOnCancelListener(new WebDialog.1(this));
    this.spinner = new ProgressDialog(getContext());
    this.spinner.requestWindowFeature(1);
    this.spinner.setMessage(getContext().getString(2131493613));
    this.spinner.setOnCancelListener(new WebDialog.2(this));
    requestWindowFeature(1);
    this.contentFrameLayout = new FrameLayout(getContext());
    createCrossImage();
    setUpWebView(this.crossImageView.getDrawable().getIntrinsicWidth() / 2);
    this.contentFrameLayout.addView(this.crossImageView, new ViewGroup.LayoutParams(-2, -2));
    addContentView(this.contentFrameLayout, new ViewGroup.LayoutParams(-1, -1));
  }
  
  public void onDetachedFromWindow()
  {
    this.isDetached = true;
    super.onDetachedFromWindow();
  }
  
  public void setOnCompleteListener(WebDialog.OnCompleteListener paramOnCompleteListener)
  {
    this.onCompleteListener = paramOnCompleteListener;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.widget.WebDialog
 * JD-Core Version:    0.7.0.1
 */