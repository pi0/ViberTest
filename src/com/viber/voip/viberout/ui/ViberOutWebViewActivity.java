package com.viber.voip.viberout.ui;

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
import com.viber.voip.app.ViberActivity;
import com.viber.voip.billing.a;
import com.viber.voip.billing.s;
import com.viber.voip.util.hy;

public class ViberOutWebViewActivity
  extends ViberActivity
{
  private static String a = "extra_url";
  private static String b = "extra_title";
  private static String c = "EXTRA_BILLING_SERVER_REQUEST_SUBJECT";
  private static final String f = ViberOutWebViewActivity.class.getSimpleName();
  private WebView d;
  private String e;
  
  private void a()
  {
    String str1 = getIntent().getStringExtra(a);
    String str2 = getIntent().getStringExtra(b);
    if (str2 != null) {
      getSupportActionBar().setTitle(str2);
    }
    this.e = getIntent().getStringExtra(c);
    if (this.e != null)
    {
      c("loading billing server request: " + this.e);
      c();
      return;
    }
    c("loading url " + str1);
    b(str1);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(paramContext, ViberOutWebViewActivity.class);
    localIntent.putExtra(a, paramString1);
    localIntent.putExtra(b, paramString2);
    hy.a(localIntent);
    paramContext.startActivity(localIntent);
  }
  
  private void a(s params)
  {
    d();
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void b()
  {
    this.d = ((WebView)findViewById(2131165857));
    this.d.getSettings().setJavaScriptEnabled(true);
    this.d.setWebChromeClient(new ba(this));
    this.d.setWebViewClient(new bb(this));
    hy.a(getIntent(), this.d);
  }
  
  public static void b(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(paramContext, ViberOutWebViewActivity.class);
    localIntent.putExtra(c, paramString2);
    localIntent.putExtra(b, paramString1);
    hy.a(localIntent);
    paramContext.startActivity(localIntent);
  }
  
  private void b(String paramString)
  {
    getSherlock().setProgressBarIndeterminateVisibility(true);
    a.a(paramString, new bd(this));
  }
  
  private void c()
  {
    c("loadBillingServerRequest, subject:" + this.e);
    getSherlock().setProgressBarIndeterminateVisibility(true);
    a.a(this.e, new bc(this));
  }
  
  private static void c(String paramString) {}
  
  private void d()
  {
    View localView = findViewById(2131165783);
    localView.setVisibility(0);
    findViewById(2131165784).setOnClickListener(new be(this, localView));
  }
  
  public void finish()
  {
    this.d.loadUrl("");
    super.finish();
  }
  
  public void onBackPressed()
  {
    if (this.d.canGoBack())
    {
      this.d.goBack();
      return;
    }
    this.d.loadUrl("");
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    c("onCreate()");
    super.onCreate(paramBundle);
    getSherlock().requestFeature(5);
    setContentView(2130903223);
    getSupportActionBar().setDisplayShowHomeEnabled(false);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    b();
    a();
  }
  
  protected void onDestroy()
  {
    this.d.loadUrl("");
    super.onDestroy();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    finish();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ViberOutWebViewActivity
 * JD-Core Version:    0.7.0.1
 */