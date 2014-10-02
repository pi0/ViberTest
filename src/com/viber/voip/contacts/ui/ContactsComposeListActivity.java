package com.viber.voip.contacts.ui;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.j;
import com.viber.voip.app.ViberSingleFragmentActivity;
import com.viber.voip.d;
import com.viber.voip.util.gl;

public class ContactsComposeListActivity
  extends ViberSingleFragmentActivity
  implements bc
{
  private InputMethodManager b;
  private boolean c;
  
  public void a(Intent paramIntent)
  {
    startActivity(paramIntent);
    finish();
  }
  
  protected Fragment b()
  {
    if (this.c) {
      return new cp();
    }
    return new ap();
  }
  
  public void onBackPressed()
  {
    Fragment localFragment = c();
    if (((localFragment instanceof d)) && (((d)localFragment).onActivityBackPressed())) {
      return;
    }
    super.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (ViberApplication.isTablet()) {
      gl.a(this);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    com.viber.voip.a.bc.a().a(a.t.a());
    if (ViberApplication.isTablet()) {
      gl.a(this);
    }
    if ((getIntent().getBooleanExtra("is_public_group_compose", false)) || ("com.viber.voip.action.PUBLIC_GROUP_ADD_PARTICIPANTS".equals(getIntent().getAction()))) {
      this.c = true;
    }
    super.onCreate(paramBundle);
    this.b = ((InputMethodManager)getSystemService("input_method"));
    findViewById(2131165332).setBackgroundResource(2130837701);
    getSupportActionBar().setDisplayShowHomeEnabled(false);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    String str = getIntent().getStringExtra("title");
    if (str != null) {
      getSupportActionBar().setTitle(str);
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
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    this.b.hideSoftInputFromWindow(getWindow().getDecorView().getWindowToken(), 0);
    finish();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ContactsComposeListActivity
 * JD-Core Version:    0.7.0.1
 */