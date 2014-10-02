package com.viber.voip.market;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.bc;
import com.viber.voip.bd;
import com.viber.voip.billing.bt;
import com.viber.voip.billing.bv;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.e.u;
import com.viber.voip.process.i;
import com.viber.voip.stickers.e.c;
import com.viber.voip.util.gj;
import com.viber.voip.util.hy;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class MarketActivity
  extends ViberFragmentActivity
  implements bh
{
  private static final String a = MarketActivity.class.getSimpleName();
  private ViewGroup b;
  private ViewGroup c;
  private WebView d;
  private bk e;
  private String f;
  private o g;
  private i h;
  private Handler i = dc.a(dk.a);
  private ak j;
  private boolean k;
  private boolean l = false;
  private Runnable m = new b(this);
  
  public static Intent a(int paramInt)
  {
    Intent localIntent = a(o.b);
    localIntent.putExtra("sticker_package_id", paramInt);
    return localIntent;
  }
  
  private static Intent a(o paramo)
  {
    Intent localIntent = new Intent(ViberApplication.getInstance(), MarketActivity.class);
    localIntent.setFlags(335544320);
    localIntent.putExtra("method", paramo.ordinal());
    hy.a(localIntent);
    return localIntent;
  }
  
  public static Intent a(String paramString)
  {
    Intent localIntent = a(o.d);
    if (!gj.c(paramString)) {
      localIntent.putExtra("search_query", paramString);
    }
    return localIntent;
  }
  
  public static void a()
  {
    a(a(o.a));
  }
  
  private static void a(Intent paramIntent)
  {
    ViberApplication.getInstance().startActivity(paramIntent);
  }
  
  private void a(boolean paramBoolean)
  {
    int n = 8;
    ViewGroup localViewGroup1 = this.b;
    int i1;
    ViewGroup localViewGroup2;
    if (paramBoolean)
    {
      i1 = 0;
      localViewGroup1.setVisibility(i1);
      localViewGroup2 = this.c;
      if (!paramBoolean) {
        break label44;
      }
    }
    for (;;)
    {
      localViewGroup2.setVisibility(n);
      return;
      i1 = n;
      break;
      label44:
      n = 0;
    }
  }
  
  public static Intent b()
  {
    return a(null);
  }
  
  public static Intent b(int paramInt)
  {
    Intent localIntent = a(paramInt);
    u.a(localIntent);
    return localIntent;
  }
  
  private void b(boolean paramBoolean)
  {
    f("setLoadingProgressVisible: visible=" + paramBoolean);
  }
  
  public static Intent c(int paramInt)
  {
    Intent localIntent = a(o.c);
    localIntent.putExtra("sticker_package_id", paramInt);
    return localIntent;
  }
  
  private String c()
  {
    switch (c.a[this.g.ordinal()])
    {
    default: 
      return getString(2131494309);
    }
    return getString(2131494548);
  }
  
  private String d(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramString);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = ViberApplication.getInstance().getAppVersion();
    return String.format("?utm_source=Android&utm_medium=Android&utm_term=%s&utm_content=getstickerbutton", arrayOfObject);
  }
  
  private void d()
  {
    f("syncProductsAndLoadMarket()");
    if (ViberApplication.preferences().b("PREF_MARKET_PRODUCTS_SYNCED", false))
    {
      f();
      return;
    }
    f("syncing products");
    this.k = true;
    bv.a(new d(this));
  }
  
  public static void d(int paramInt)
  {
    a(a(paramInt));
  }
  
  private void e()
  {
    Intent localIntent = getIntent();
    o localo = o.values()[localIntent.getIntExtra("method", 0)];
    switch (c.a[localo.ordinal()])
    {
    }
    for (this.f = bc.b().U;; this.f = bc.b().ac)
    {
      f("updateBaseUrl() method = " + localo);
      return;
    }
  }
  
  public static void e(int paramInt)
  {
    a(c(paramInt));
  }
  
  private void e(String paramString)
  {
    a(true);
    new e(this, paramString).execute(new Void[0]);
  }
  
  private String f(int paramInt)
  {
    bt localbt = bt.a(paramInt);
    return this.f + localbt;
  }
  
  private void f()
  {
    f("loadMarket()");
    Intent localIntent = getIntent();
    Object localObject1;
    switch (c.a[this.g.ordinal()])
    {
    default: 
      localObject1 = g(this.f);
    }
    for (;;)
    {
      if (this.g == o.a) {}
      String str2;
      for (boolean bool = true;; bool = false)
      {
        this.e = new bk(this, bool);
        this.j = new ak(this, this.e, this);
        this.j.a();
        f("Loading url " + (String)localObject1);
        e((String)localObject1);
        return;
        localObject1 = f(localIntent.getIntExtra("sticker_package_id", 0));
        break;
        localObject1 = d(f(localIntent.getIntExtra("sticker_package_id", 0)));
        break;
        getSupportActionBar().setTitle(2131494548);
        String str1 = localIntent.getStringExtra("search_query");
        str2 = this.f;
        if (str1 == null) {
          break label291;
        }
        Object localObject2 = "";
        try
        {
          String str3 = URLEncoder.encode(str1, "utf-8");
          localObject2 = str3;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          for (;;)
          {
            localUnsupportedEncodingException.printStackTrace();
          }
        }
        localObject1 = str2 + "?search=" + (String)localObject2;
        f("PG search, url = " + (String)localObject1);
        break;
      }
      label291:
      localObject1 = str2;
    }
  }
  
  private void f(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private String g(String paramString)
  {
    long l1 = System.currentTimeMillis() / 3600000L;
    return paramString + "?t=" + l1;
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void g()
  {
    h();
    this.d = ((WebView)findViewById(2131165857));
    this.d.getSettings().setJavaScriptEnabled(true);
    this.d.setWebChromeClient(new f(this));
    this.d.setWebViewClient(new n(this, null));
    this.d.getSettings().setDomStorageEnabled(true);
    hy.a(getIntent(), this.d);
  }
  
  private void h()
  {
    if (!ViberApplication.preferences().b("PREF_MARKET_ENABLE_URL_CHANGE", false))
    {
      findViewById(2131165890).setVisibility(8);
      return;
    }
    findViewById(2131165890).setOnClickListener(new g(this));
  }
  
  private void i()
  {
    this.h = new l(this);
    com.viber.voip.process.e.a().a(this.h);
    new m(this).a(this);
  }
  
  public void a(bi parambi)
  {
    runOnUiThread(new j(this, parambi));
  }
  
  public void a(Object paramObject, String paramString)
  {
    this.d.addJavascriptInterface(paramObject, paramString);
  }
  
  public void b(String paramString)
  {
    f("setPageTitle: " + paramString);
    runOnUiThread(new k(this, paramString));
  }
  
  public void c(String paramString)
  {
    String str = "javascript:" + paramString;
    f("evaluateJS: " + str);
    if (this.l) {
      return;
    }
    this.d.loadUrl(str);
    f("evaluateJS: load");
  }
  
  public void onBackPressed()
  {
    if (this.d.canGoBack() == true)
    {
      this.d.goBack();
      return;
    }
    if (isTaskRoot())
    {
      if (this.g != o.d) {}
      for (String str = "com.viber.voip.action.YOU";; str = "com.viber.voip.action.PUBLIC_GROUP")
      {
        startActivity(new Intent(str));
        finish();
        return;
      }
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f("onCreate, sticker pkg: " + getIntent().getIntExtra("sticker_package_id", 0));
    this.g = o.values()[getIntent().getIntExtra("method", 0)];
    getActionBarSherlock().requestFeature(5);
    getActionBarSherlock().getActionBar().setDisplayShowHomeEnabled(false);
    getActionBarSherlock().getActionBar().setDisplayHomeAsUpEnabled(true);
    getActionBarSherlock().setProgressBarIndeterminateVisibility(false);
    getSupportActionBar().setTitle(c());
    e();
    f("onCreate, baseUrl = " + this.f);
    setContentView(2130903241);
    this.b = ((ViewGroup)findViewById(2131165465));
    this.c = ((ViewGroup)findViewById(2131165783));
    findViewById(2131165784).setOnClickListener(new a(this));
    a(true);
    b(false);
    g();
    d();
    if (this.g != o.d)
    {
      i();
      c.a(this);
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (this.g != o.d)
    {
      getSupportMenuInflater().inflate(2131755028, paramMenu);
      return true;
    }
    return false;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    f("onDestroy: MarketActivity");
    this.l = true;
    com.viber.voip.process.e.a().b(this.h);
    if (this.e != null) {
      this.e.a();
    }
    if (this.j != null) {
      this.j.c();
    }
    this.i.removeCallbacks(this.m);
    this.d.destroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    e();
    f("onNewIntent, sticker pkg: " + getIntent().getIntExtra("sticker_package_id", 0));
    if (!this.k) {
      f();
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 16908332: 
      onBackPressed();
      return true;
    }
    startActivity(new Intent(this, MarketSettingsActivity.class));
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    if (this.j != null) {
      this.j.b();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.j != null) {
      this.j.a();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.MarketActivity
 * JD-Core Version:    0.7.0.1
 */