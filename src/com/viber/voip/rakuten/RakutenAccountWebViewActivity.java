package com.viber.voip.rakuten;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.MailTo;
import android.os.Bundle;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebBackForwardList;
import android.webkit.WebHistoryItem;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.util.hy;

public class RakutenAccountWebViewActivity
  extends ViberActivity
{
  private static final String c = RakutenAccountWebViewActivity.class.getSimpleName();
  private WebView a;
  private i b;
  
  private Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.putExtra("android.intent.extra.EMAIL", new String[] { paramString1 });
    localIntent.putExtra("android.intent.extra.TEXT", paramString3);
    localIntent.putExtra("android.intent.extra.SUBJECT", paramString2);
    localIntent.putExtra("android.intent.extra.CC", paramString4);
    localIntent.setType("message/rfc822");
    return localIntent;
  }
  
  private void a()
  {
    String str = getIntent().getStringExtra("url");
    this.b = new a(this);
    this.b.execute(new String[] { str });
  }
  
  private void b()
  {
    c("enableCookies()");
    CookieManager.getInstance().setAcceptCookie(true);
  }
  
  private void b(String paramString)
  {
    MailTo localMailTo = MailTo.parse(paramString);
    startActivity(a(this, localMailTo.getTo(), localMailTo.getSubject(), localMailTo.getBody(), localMailTo.getCc()));
  }
  
  private void c()
  {
    c("syncCookies()");
    CookieSyncManager.getInstance().sync();
  }
  
  private static void c(String paramString) {}
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void d()
  {
    this.a = ((WebView)findViewById(2131165857));
    WebSettings localWebSettings = this.a.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDomStorageEnabled(true);
    this.a.setWebChromeClient(new b(this));
    this.a.setWebViewClient(new c(this));
    hy.a(getIntent(), this.a);
  }
  
  private void e()
  {
    View localView = findViewById(2131165783);
    localView.setVisibility(0);
    findViewById(2131165784).setOnClickListener(new e(this, localView));
  }
  
  private boolean f()
  {
    if (this.a.canGoBack())
    {
      g();
      return true;
    }
    return false;
  }
  
  private void g()
  {
    WebBackForwardList localWebBackForwardList = this.a.copyBackForwardList();
    int i = localWebBackForwardList.getCurrentIndex();
    c("goBackChecked: curIndex:" + i + ", size:" + localWebBackForwardList.getSize());
    int j = 0;
    if (j < localWebBackForwardList.getSize())
    {
      WebHistoryItem localWebHistoryItem = localWebBackForwardList.getItemAtIndex(j);
      String str2 = localWebHistoryItem.getUrl();
      String str3 = localWebHistoryItem.getOriginalUrl();
      StringBuilder localStringBuilder = new StringBuilder().append("goBackChecked: item #").append(j).append(" url:").append(str2);
      if (str2.equals(str3)) {}
      for (String str4 = "";; str4 = ", orig:" + str3)
      {
        c(str4);
        j++;
        break;
      }
    }
    String str1 = localWebBackForwardList.getItemAtIndex(i - 1).getUrl();
    if (this.b == null)
    {
      getSherlock().setProgressBarIndeterminateVisibility(true);
      this.b = new f(this);
      this.b.execute(new String[] { str1 });
      return;
    }
    c("goBackChecked: blocked because there is a working RequestTask");
  }
  
  public void finish()
  {
    this.a.loadUrl("");
    this.a.clearHistory();
    super.finish();
  }
  
  public void onBackPressed()
  {
    if (f())
    {
      c("webview - going back");
      return;
    }
    if (isTaskRoot())
    {
      startActivity(new Intent("com.viber.voip.action.YOU"));
      finish();
      return;
    }
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
    getSupportActionBar().setTitle(2131494797);
    d();
    a();
  }
  
  protected void onDestroy()
  {
    this.b = null;
    if (this.a != null)
    {
      this.a.loadUrl("");
      this.a.destroy();
      c();
    }
    super.onDestroy();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    onBackPressed();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.rakuten.RakutenAccountWebViewActivity
 * JD-Core Version:    0.7.0.1
 */