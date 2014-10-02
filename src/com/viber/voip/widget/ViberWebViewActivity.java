package com.viber.voip.widget;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.market.a.a;
import com.viber.voip.util.hy;

public class ViberWebViewActivity
  extends ViberActivity
{
  private static final String d = ViberWebViewActivity.class.getSimpleName();
  private WebView a;
  private ProgressDialog b;
  private String c;
  
  private void b()
  {
    View localView = findViewById(2131165783);
    localView.setVisibility(0);
    findViewById(2131165784).setOnClickListener(new ak(this, localView));
  }
  
  private static void b(String paramString) {}
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void c()
  {
    this.a = ((WebView)findViewById(2131165857));
    this.a.getSettings().setJavaScriptEnabled(true);
    this.a.setVerticalScrollBarEnabled(false);
    this.a.setHorizontalScrollBarEnabled(false);
    this.a.setWebViewClient(new al(this));
    hy.a(getIntent(), this.a);
  }
  
  void a()
  {
    new a().a(new aj(this));
  }
  
  public void finish()
  {
    if (this.a != null) {
      this.a.loadUrl("");
    }
    super.finish();
  }
  
  public void onBackPressed()
  {
    if (this.a != null)
    {
      if (this.a.canGoBack())
      {
        this.a.goBack();
        return;
      }
      this.a.loadUrl("");
      super.onBackPressed();
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    b("onCreate()");
    super.onCreate(paramBundle);
    getSherlock().requestFeature(1);
    setContentView(2130903235);
    a();
  }
  
  protected void onDestroy()
  {
    if (this.a != null) {
      this.a.loadUrl("");
    }
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
    finish();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.widget.ViberWebViewActivity
 * JD-Core Version:    0.7.0.1
 */