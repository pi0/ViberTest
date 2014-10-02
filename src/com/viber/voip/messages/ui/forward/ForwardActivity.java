package com.viber.voip.messages.ui.forward;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.KeyEvent;
import android.view.View;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.ActionBar.OnNavigationListener;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.y;
import com.viber.voip.app.ViberReplaceFragmentActivity;
import com.viber.voip.contacts.ui.ap;
import com.viber.voip.d;
import com.viber.voip.messages.conversation.ui.ConversationData;
import com.viber.voip.messages.ui.MessagesFragment;
import com.viber.voip.messages.ui.df;
import com.viber.voip.settings.l;
import com.viber.voip.util.ao;
import com.viber.voip.util.gl;
import java.util.ArrayList;

public class ForwardActivity
  extends ViberReplaceFragmentActivity
  implements ActionBar.OnNavigationListener, com.viber.voip.contacts.ui.bc, df
{
  private static final String b = ForwardActivity.class.getSimpleName();
  private int c = 0;
  private boolean d;
  private long e = 0L;
  private int f;
  private int g;
  private ArrayList<Uri> h;
  private String i;
  private String j;
  private Bundle k;
  private String[] l;
  private String m;
  private Fragment n;
  private Fragment o;
  
  private void b(Intent paramIntent)
  {
    if (this.h != null) {
      paramIntent.putParcelableArrayListExtra("share_images_uri", this.h);
    }
    for (;;)
    {
      if ((this.e > 0L) || (this.d))
      {
        paramIntent.putExtra("default_message_id", this.e);
        paramIntent.putExtra("is_forward_only_locations", this.d);
        paramIntent.putExtra("forward_locations_lat", this.f);
        paramIntent.putExtra("forward_locations_lng", this.g);
        paramIntent.putExtra("forward", true);
      }
      startActivity(paramIntent);
      finish();
      return;
      if (this.i != null) {
        paramIntent.putExtra("share_uri", this.i);
      } else if (this.j != null) {
        paramIntent.putExtra("share_text", this.j);
      }
    }
  }
  
  private void c(Intent paramIntent)
  {
    ConversationData localConversationData = (ConversationData)paramIntent.getParcelableExtra("extra_conversation_data");
    this.k.putParcelable("extra_conversation_data", localConversationData);
    Intent localIntent = new Intent("com.viber.voip.action.API_PARTICIPANTS_SELECT_RESPONSE");
    localIntent.putExtra("api_data", this.k);
    sendBroadcast(localIntent);
    finish();
  }
  
  private void d()
  {
    this.c = ViberApplication.preferences().b("forward_selection", 0);
    Context localContext = getSupportActionBar().getThemedContext();
    String str = this.m;
    String[] arrayOfString = this.l;
    boolean bool1;
    if (!ao.b(getApplicationContext()))
    {
      boolean bool2 = ViberApplication.isTablet();
      bool1 = false;
      if (!bool2) {}
    }
    else
    {
      bool1 = true;
    }
    a locala = new a(localContext, 17367048, str, arrayOfString, bool1);
    getSupportActionBar().setListNavigationCallbacks(locala, this);
    getSupportActionBar().setSelectedNavigationItem(this.c);
    a();
  }
  
  private void e()
  {
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      this.h = localBundle.getParcelableArrayList("share_images_uri");
      this.i = localBundle.getString("share_uri");
      this.j = localBundle.getString("share_text");
      this.e = localBundle.getLong("default_message_id", 0L);
      this.d = localBundle.getBoolean("is_forward_only_locations", false);
      this.f = localBundle.getInt("forward_locations_lat", 0);
      this.g = localBundle.getInt("forward_locations_lng", 0);
      this.k = localBundle.getBundle("api_data");
    }
  }
  
  private Fragment f()
  {
    if (this.c == 1)
    {
      if (this.n == null) {
        this.n = new ap();
      }
      ((ap)this.n).e();
      return this.n;
    }
    if (this.c == 0)
    {
      if (this.o == null)
      {
        Bundle localBundle = new Bundle();
        localBundle.putBoolean("open_for_forward", true);
        this.o = new MessagesFragment(true);
        this.o.setArguments(localBundle);
      }
      return this.o;
    }
    finish();
    return null;
  }
  
  public void a(int paramInt) {}
  
  public void a(Intent paramIntent)
  {
    if (this.k == null)
    {
      b(paramIntent);
      return;
    }
    c(paramIntent);
  }
  
  public void a(boolean paramBoolean) {}
  
  public void a_(Intent paramIntent)
  {
    if (this.k == null)
    {
      if (paramIntent.getBooleanExtra("clicked", false)) {
        b(paramIntent);
      }
      return;
    }
    c(paramIntent);
  }
  
  protected Fragment b()
  {
    return f();
  }
  
  public void onBackPressed()
  {
    Fragment localFragment = c();
    if (((localFragment instanceof d)) && (((d)localFragment).onActivityBackPressed())) {
      return;
    }
    if (getIntent().hasExtra("back_intent")) {
      startActivity((Intent)getIntent().getParcelableExtra("back_intent"));
    }
    super.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (ViberApplication.isTablet()) {
      gl.a(this);
    }
    d();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    com.viber.voip.a.bc.a().a(com.viber.voip.a.a.p.a());
    if (ViberApplication.isTablet()) {
      gl.a(this);
    }
    for (;;)
    {
      super.onCreate(paramBundle);
      findViewById(2131165332).setBackgroundResource(2130837701);
      getSupportActionBar().setDisplayShowHomeEnabled(true);
      getSupportActionBar().setDisplayHomeAsUpEnabled(true);
      getSupportActionBar().setNavigationMode(1);
      this.m = getResources().getString(2131493698);
      this.l = getResources().getStringArray(2131623938);
      d();
      e();
      return;
      gl.a(this, "");
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    Fragment localFragment = c();
    if (((localFragment instanceof d)) && (((d)localFragment).onActivityKeyUp(paramInt, paramKeyEvent))) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public boolean onNavigationItemSelected(int paramInt, long paramLong)
  {
    if (this.c != paramInt)
    {
      ViberApplication.preferences().a("forward_selection", paramInt);
      this.c = paramInt;
      a();
    }
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    if (getIntent().hasExtra("back_intent")) {
      startActivity((Intent)getIntent().getParcelableExtra("back_intent"));
    }
    finish();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.forward.ForwardActivity
 * JD-Core Version:    0.7.0.1
 */