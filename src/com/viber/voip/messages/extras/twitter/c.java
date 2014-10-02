package com.viber.voip.messages.extras.twitter;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.viber.voip.widget.NullCatcherWebView;

public class c
  extends Dialog
{
  private static final float[] f = { 460.0F, 260.0F };
  private static final float[] g = { 290.0F, 420.0F };
  private String a;
  private e b;
  private ProgressDialog c;
  private TextView d;
  private WebView e;
  
  public c(Context paramContext, String paramString, e parame)
  {
    super(paramContext);
    this.a = paramString;
    this.b = parame;
  }
  
  private void a(String paramString)
  {
    Log.d("--->", paramString);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903185);
    this.c = new ProgressDialog(getContext());
    this.c.requestWindowFeature(1);
    this.c.setMessage(getContext().getString(2131493676));
    Display localDisplay = getWindow().getWindowManager().getDefaultDisplay();
    float f1 = getContext().getResources().getDisplayMetrics().density;
    if (localDisplay.getWidth() < localDisplay.getHeight()) {}
    for (float[] arrayOfFloat = g;; arrayOfFloat = f)
    {
      ((LinearLayout)findViewById(2131165762)).setLayoutParams(new FrameLayout.LayoutParams((int)(0.5F + f1 * arrayOfFloat[0]), (int)(0.5F + f1 * arrayOfFloat[1])));
      this.d = ((TextView)findViewById(2131165357));
      this.e = ((NullCatcherWebView)findViewById(2131165763));
      this.e.setVerticalScrollBarEnabled(false);
      this.e.setHorizontalScrollBarEnabled(false);
      this.e.setWebViewClient(new f(this, null));
      this.e.getSettings().setJavaScriptEnabled(true);
      if (this.a != null)
      {
        this.e.loadUrl(this.a);
        a("onCreate() url=" + this.a);
      }
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.c
 * JD-Core Version:    0.7.0.1
 */