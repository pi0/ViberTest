package com.viber.voip.contacts.ui;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.KeyEvent;
import android.view.View;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberSingleFragmentActivity;
import com.viber.voip.d;
import com.viber.voip.util.gl;

public class ContactsListActivity
  extends ViberSingleFragmentActivity
  implements bl
{
  public void a(int paramInt, Fragment paramFragment) {}
  
  public void a(boolean paramBoolean, Intent paramIntent) {}
  
  protected Fragment b()
  {
    return new ContactsFragment();
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
    if (ViberApplication.isTablet()) {
      gl.a(this);
    }
    super.onCreate(paramBundle);
    findViewById(2131165332).setBackgroundResource(2130837701);
    getSupportActionBar().setDisplayShowHomeEnabled(false);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    String str = getIntent().getStringExtra("title");
    if (str != null) {
      getSupportActionBar().setTitle(str);
    }
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
    finish();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ContactsListActivity
 * JD-Core Version:    0.7.0.1
 */