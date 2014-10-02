package com.viber.voip.viberout.ui;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.Html;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.as;
import com.viber.voip.a.bc;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.billing.dt;
import com.viber.voip.billing.u;
import com.viber.voip.messages.ui.PositioningAwareFrameLayout;
import com.viber.voip.settings.l;

public class ViberOutActivity
  extends ViberActivity
{
  private static final String a = ViberOutActivity.class.getSimpleName();
  private u b;
  private TextView c;
  private ProgressBar d;
  private View e;
  private View f;
  private View g;
  private View h;
  private BroadcastReceiver i = new j(this);
  
  public static void a()
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    Intent localIntent = new Intent("fetch_balance");
    LocalBroadcastManager.getInstance(localViberApplication).sendBroadcast(localIntent);
  }
  
  private void a(boolean paramBoolean)
  {
    View localView = this.e;
    if (paramBoolean) {}
    for (int j = 0;; j = 4)
    {
      localView.setVisibility(j);
      return;
    }
  }
  
  private void b()
  {
    PositioningAwareFrameLayout localPositioningAwareFrameLayout = (PositioningAwareFrameLayout)findViewById(2131166170);
    localPositioningAwareFrameLayout.setPositioningListener(new h(this, localPositioningAwareFrameLayout));
  }
  
  private static void b(String paramString) {}
  
  private void b(String paramString1, String paramString2)
  {
    ViberOutWebViewActivity.a(this, paramString1, paramString2);
  }
  
  private void b(boolean paramBoolean)
  {
    ViberApplication.preferences().a("vo_have_billing_account", paramBoolean);
    a(paramBoolean);
  }
  
  private void c()
  {
    e();
    this.b = com.viber.voip.billing.a.a().a(new k(this));
  }
  
  private void d()
  {
    this.c.setVisibility(0);
    this.d.setVisibility(8);
    this.f.setVisibility(8);
  }
  
  private void e()
  {
    this.c.setVisibility(8);
    this.d.setVisibility(0);
    this.f.setVisibility(8);
  }
  
  private void f()
  {
    this.c.setVisibility(8);
    this.d.setVisibility(8);
    this.f.setVisibility(8);
  }
  
  private void g()
  {
    this.c.setVisibility(8);
    this.d.setVisibility(8);
    this.f.setVisibility(0);
  }
  
  private boolean h()
  {
    return ViberApplication.preferences().b("vo_have_billing_account", false);
  }
  
  public void a(String paramString1, String paramString2)
  {
    ViberOutWebViewActivity.b(this, paramString2, paramString1);
  }
  
  public void onBackPressed()
  {
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
    super.onCreate(paramBundle);
    setContentView(2130903350);
    getSupportActionBar().setIcon(2130838582);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setTitle(2131494840);
    this.c = ((TextView)findViewById(2131166171));
    this.d = ((ProgressBar)findViewById(2131166172));
    dt.a(null);
    b();
    findViewById(2131166174).setOnClickListener(new a(this));
    findViewById(2131166179).setOnClickListener(new c(this));
    this.f = findViewById(2131166173);
    this.f.setOnClickListener(new d(this));
    this.e = findViewById(2131166175);
    this.g = findViewById(2131166176);
    this.g.setOnClickListener(new e(this));
    this.h = findViewById(2131166177);
    this.h.setOnClickListener(new f(this));
    TextView localTextView = (TextView)findViewById(2131166178);
    localTextView.setText(Html.fromHtml("<u>" + getResources().getString(2131494256) + "</u>"));
    localTextView.setOnClickListener(new g(this));
    bc.a().a(com.viber.voip.a.a.k.a());
    a(h());
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
  
  protected void onStart()
  {
    super.onStart();
    c();
    LocalBroadcastManager.getInstance(this).registerReceiver(this.i, new IntentFilter("fetch_balance"));
  }
  
  protected void onStop()
  {
    super.onStart();
    this.b = null;
    LocalBroadcastManager.getInstance(this).unregisterReceiver(this.i);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.viberout.ui.ViberOutActivity
 * JD-Core Version:    0.7.0.1
 */