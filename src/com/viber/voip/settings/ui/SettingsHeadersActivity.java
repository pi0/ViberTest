package com.viber.voip.settings.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceScreen;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.AttributeSet;
import android.view.View;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.user.YouFragment.PreferenceItem;

public class SettingsHeadersActivity
  extends SherlockFragmentActivity
  implements bi, by
{
  public static String a = "preference_category_extra";
  protected Fragment b;
  private SettingsHeadersFragment c;
  private int d = -1;
  
  private void a(Intent paramIntent)
  {
    if (paramIntent.hasExtra("selected_item"))
    {
      this.d = paramIntent.getIntExtra("selected_item", -1);
      this.c.a(this.d);
      a();
    }
  }
  
  private void a(Fragment paramFragment)
  {
    if (paramFragment == null) {
      return;
    }
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    if (this.b != null) {
      localFragmentTransaction.remove(this.b);
    }
    localFragmentTransaction.replace(2131165341, paramFragment);
    if (ViberApplication.isTablet()) {
      localFragmentTransaction.setTransition(4099);
    }
    localFragmentTransaction.commitAllowingStateLoss();
    this.b = paramFragment;
  }
  
  private static void a(String paramString) {}
  
  private boolean b()
  {
    if (this.d != -1)
    {
      this.d = -1;
      getSupportActionBar().setTitle(2131493848);
      getSupportActionBar().setIcon(2130838482);
      this.c = new SettingsHeadersFragment();
      a(this.c);
      return true;
    }
    return false;
  }
  
  public void a()
  {
    YouFragment.PreferenceItem localPreferenceItem = ca.a(this.d);
    ViberApplication.log("updateSelectedSettingsTitle mSelectedSettingsItemId:" + this.d + ",preferenceItem:" + localPreferenceItem);
    if (localPreferenceItem != null)
    {
      getSupportActionBar().setTitle(localPreferenceItem.title);
      getSupportActionBar().setIcon(localPreferenceItem.barIcon);
      a(this.c.a());
    }
  }
  
  public void a(PreferenceScreen paramPreferenceScreen, int paramInt)
  {
    a("onPreferenceAttached root:" + paramPreferenceScreen + ", xmlId:" + paramInt);
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    ViberApplication.log("onSettingsItemSelected position:" + paramInt1);
    this.d = paramInt2;
    a();
  }
  
  public void finish()
  {
    super.finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    a("handleActivityResult requestCode:" + paramInt1 + ",resultCode:" + paramInt2);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((this.b != null) && ((this.b instanceof bv))) {
      this.b.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void onBackPressed()
  {
    if (b()) {
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
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    setContentView(2130903050);
    getSupportActionBar().setIcon(2130838482);
    this.c = new SettingsHeadersFragment();
    a(this.c);
    a(getIntent());
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return super.onCreateView(paramString, paramContext, paramAttributeSet);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    a(paramIntent);
    setIntent(paramIntent);
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
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    this.d = paramBundle.getInt("com.viber.voip.settings.ui.SettingsHeadersActivity.selectedItemId");
    if (this.d > 0)
    {
      this.c.a(this.d);
      a();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("com.viber.voip.settings.ui.SettingsHeadersActivity.selectedItemId", this.d);
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.SettingsHeadersActivity
 * JD-Core Version:    0.7.0.1
 */