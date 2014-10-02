package com.viber.voip.contacts.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.KeyEvent;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.HomeActivity;
import com.viber.voip.app.ViberSingleFragmentActivity;
import com.viber.voip.d;
import com.viber.voip.util.gl;

public class ContactDetailsActivity
  extends ViberSingleFragmentActivity
  implements ac
{
  protected boolean a()
  {
    return true;
  }
  
  protected Fragment b()
  {
    return new ContactDetailsFragment();
  }
  
  public void e()
  {
    finish();
  }
  
  public void onBackPressed()
  {
    Fragment localFragment = c();
    if (((localFragment instanceof d)) && (((d)localFragment).onActivityBackPressed())) {
      return;
    }
    if (getIntent().getBooleanExtra("EXTRA_RETURN_TO_HOME", false))
    {
      Intent localIntent = new Intent(this, HomeActivity.class);
      if (!gl.b()) {
        localIntent.putExtra("invalidate_options_menu", true);
      }
      startActivity(localIntent);
      finish();
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    requestViberOutCheck();
    super.onCreate(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setIcon(2130837764);
    if (a()) {
      getSupportActionBar().setBackgroundDrawable(getResources().getDrawable(2130837505));
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
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    ((ContactDetailsFragment)c()).a(paramIntent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    String str1 = getIntent().getAction();
    boolean bool1 = "com.viber.voip.action.VIEW_CONTACT".equals(str1);
    int i = 0;
    if (!bool1)
    {
      boolean bool2 = "com.viber.voip.action.VIEW_CONTACT_DIALOG".equals(str1);
      i = 0;
      if (!bool2) {
        i = 1;
      }
    }
    if (i != 0) {}
    for (String str2 = "com.viber.voip.action.CALL_LOG";; str2 = "com.viber.voip.action.CONTACTS")
    {
      Intent localIntent = new Intent(str2);
      if (!gl.b()) {
        localIntent.putExtra("invalidate_options_menu", true);
      }
      startActivity(localIntent);
      finish();
      return true;
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    ((ContactDetailsFragment)c()).a(getIntent());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.ContactDetailsActivity
 * JD-Core Version:    0.7.0.1
 */