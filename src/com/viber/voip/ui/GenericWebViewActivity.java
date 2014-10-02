package com.viber.voip.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.util.hy;

public class GenericWebViewActivity
  extends ViberActivity
{
  private static String a = "extra_url";
  private static String b = "extra_title";
  private static final String d = GenericWebViewActivity.class.getSimpleName();
  private WebView c;
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void a()
  {
    this.c = ((WebView)findViewById(2131165857));
    this.c.getSettings().setJavaScriptEnabled(true);
    this.c.setWebChromeClient(new f(this));
    this.c.setWebViewClient(new g(this));
    hy.a(getIntent(), this.c);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(paramContext, GenericWebViewActivity.class);
    localIntent.putExtra(a, paramString1);
    localIntent.putExtra(b, paramString2);
    hy.a(localIntent);
    paramContext.startActivity(localIntent);
  }
  
  private void b(String paramString)
  {
    getSherlock().setProgressBarIndeterminateVisibility(true);
    this.c.loadUrl(paramString);
  }
  
  private static void c(String paramString) {}
  
  public void finish()
  {
    this.c.loadUrl("");
    super.finish();
  }
  
  public void onBackPressed()
  {
    if (this.c.canGoBack())
    {
      this.c.goBack();
      return;
    }
    this.c.loadUrl("");
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    c("onCreate()");
    super.onCreate(paramBundle);
    getSherlock().requestFeature(5);
    setContentView(2130903223);
    findViewById(2131165783).setVisibility(8);
    getSupportActionBar().setDisplayShowHomeEnabled(false);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    String str1 = getIntent().getStringExtra(a);
    String str2 = getIntent().getStringExtra(b);
    if (str2 != null) {
      getSupportActionBar().setTitle(str2);
    }
    a();
    c("loading url " + str1);
    b(str1);
  }
  
  protected void onDestroy()
  {
    this.c.loadUrl("");
    super.onDestroy();
    ViberApplication.getInstance().finish();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    if (this.c.canGoBack()) {
      this.c.goBack();
    }
    for (;;)
    {
      return true;
      finish();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ui.GenericWebViewActivity
 * JD-Core Version:    0.7.0.1
 */