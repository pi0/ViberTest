package com.viber.voip.messages.ui.media;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.actionbarsherlock.ActionBarSherlock.OnCreateOptionsMenuListener;
import com.actionbarsherlock.ActionBarSherlock.OnOptionsItemSelectedListener;
import com.actionbarsherlock.view.Menu;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.util.hy;

public class WebMapPreViewActivity
  extends ViberActivity
  implements ActionBarSherlock.OnCreateOptionsMenuListener, ActionBarSherlock.OnOptionsItemSelectedListener, ac
{
  public static final String a = WebMapPreViewActivity.class.getSimpleName();
  private WebView b;
  private ab c = new ab();
  
  public Activity a()
  {
    return this;
  }
  
  public void a(int paramInt1, int paramInt2, long paramLong1, String paramString1, float paramFloat, long paramLong2, String paramString2, boolean paramBoolean)
  {
    this.b.loadUrl(this.c.b());
    this.b.setWebViewClient(new bo(this, null));
  }
  
  public int b()
  {
    return 2130903240;
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public View c()
  {
    this.b = ((WebView)findViewById(2131165857));
    this.b.getSettings().setJavaScriptEnabled(true);
    hy.a(getIntent(), this.b);
    return this.b;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.c.a(paramConfiguration);
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public boolean onContextItemSelected(android.view.MenuItem paramMenuItem)
  {
    if (!this.c.a(paramMenuItem)) {
      return super.onContextItemSelected(paramMenuItem);
    }
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c.a(this);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    this.c.a(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return this.c.a(paramMenu);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    ViberApplication.getInstance().finish();
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.c.a(paramIntent);
  }
  
  public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    return this.c.a(paramMenuItem);
  }
  
  protected void onStart()
  {
    this.c.c();
    super.onStart();
  }
  
  protected void onStop()
  {
    this.c.d();
    super.onStop();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.WebMapPreViewActivity
 * JD-Core Version:    0.7.0.1
 */