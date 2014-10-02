package com.facebook.android;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.viber.voip.widget.NullCatcherWebView;

public class FbDialog
  extends Dialog
{
  static final float[] DIMENSIONS_DIFF_LANDSCAPE = { 20.0F, 60.0F };
  static final float[] DIMENSIONS_DIFF_PORTRAIT = { 40.0F, 60.0F };
  static final String DISPLAY_STRING = "touch";
  static final int FB_BLUE = -9599820;
  static final String FB_ICON = "icon.png";
  static final FrameLayout.LayoutParams FILL = new FrameLayout.LayoutParams(-1, -1);
  static final int MARGIN = 4;
  static final int PADDING = 2;
  private LinearLayout mContent;
  private Facebook.DialogListener mListener;
  private ProgressDialog mSpinner;
  private TextView mTitle;
  private String mUrl;
  private WebView mWebView;
  
  public FbDialog(Context paramContext, String paramString, Facebook.DialogListener paramDialogListener)
  {
    super(paramContext);
    this.mUrl = paramString;
    this.mListener = paramDialogListener;
  }
  
  private void setUpTitle()
  {
    requestWindowFeature(1);
    Drawable localDrawable = getContext().getResources().getDrawable(2130838190);
    this.mTitle = new TextView(getContext());
    this.mTitle.setText("Facebook");
    this.mTitle.setTextColor(-1);
    this.mTitle.setTypeface(Typeface.DEFAULT_BOLD);
    this.mTitle.setBackgroundColor(-9599820);
    this.mTitle.setPadding(6, 4, 4, 4);
    this.mTitle.setCompoundDrawablePadding(6);
    this.mTitle.setCompoundDrawablesWithIntrinsicBounds(localDrawable, null, null, null);
    this.mContent.addView(this.mTitle);
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void setUpWebView()
  {
    this.mWebView = new NullCatcherWebView(getContext());
    this.mWebView.setVerticalScrollBarEnabled(false);
    this.mWebView.setHorizontalScrollBarEnabled(false);
    this.mWebView.setWebViewClient(new FbDialog.FbWebViewClient(this, null));
    this.mWebView.getSettings().setJavaScriptEnabled(true);
    this.mWebView.loadUrl(this.mUrl);
    this.mWebView.setLayoutParams(FILL);
    this.mContent.addView(this.mWebView);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mSpinner = new ProgressDialog(getContext());
    this.mSpinner.requestWindowFeature(1);
    this.mSpinner.setMessage(getContext().getString(2131493676));
    this.mSpinner.setOnCancelListener(new FbDialog.1(this));
    this.mContent = new LinearLayout(getContext());
    this.mContent.setOrientation(1);
    setUpTitle();
    setUpWebView();
    Display localDisplay = getWindow().getWindowManager().getDefaultDisplay();
    float f = getContext().getResources().getDisplayMetrics().density;
    if (getContext().getResources().getConfiguration().orientation == 2) {}
    for (float[] arrayOfFloat = DIMENSIONS_DIFF_LANDSCAPE;; arrayOfFloat = DIMENSIONS_DIFF_PORTRAIT)
    {
      addContentView(this.mContent, new LinearLayout.LayoutParams(localDisplay.getWidth() - (int)(0.5F + f * arrayOfFloat[0]), localDisplay.getHeight() - (int)(0.5F + f * arrayOfFloat[1])));
      return;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 0))
    {
      this.mWebView.stopLoading();
      dismiss();
      this.mListener.onCancel();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.android.FbDialog
 * JD-Core Version:    0.7.0.1
 */