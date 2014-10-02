package com.viber.voip.user;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.ba;
import com.viber.voip.a.bc;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.messages.extras.fb.s;

public class YouActivity
  extends ViberFragmentActivity
  implements YouFragment.Callbacks
{
  public static final int ACTION_EDIT_NAME = 101;
  public static final int ACTION_GET_FACEBOOK_DETAILS = 100;
  public static final int REQUEST_CODE_ACTIONS_FROM_POPUP_MENU = 1233;
  
  protected boolean isActionBarWithShadow()
  {
    return true;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    for (;;)
    {
      ViberApplication.getInstance().getFacebookManager().a(this, paramInt1, paramInt2, paramIntent);
      return;
      if (paramIntent.getIntExtra("action", 0) != 0)
      {
        YouFragment localYouFragment = (YouFragment)getSupportFragmentManager().findFragmentById(16908290);
        switch (paramIntent.getIntExtra("action", 0))
        {
        default: 
          break;
        case 100: 
          localYouFragment.onFacebookDetailsRequested();
          break;
        case 101: 
          localYouFragment.showDialog(10);
        }
      }
    }
  }
  
  public void onAnalyticsPageViewChanged()
  {
    bc.a().a(a.h.a());
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setIcon(2130838377);
    if (isActionBarWithShadow()) {
      getSupportActionBar().setBackgroundDrawable(getResources().getDrawable(2130837505));
    }
    if (paramBundle == null)
    {
      FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
      localFragmentTransaction.add(16908290, new YouFragment());
      localFragmentTransaction.commit();
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    startActivity(new Intent("com.viber.voip.action.CONTACTS"));
    finish();
    return true;
  }
  
  public void onYouItemSelected(Intent paramIntent)
  {
    startActivity(paramIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.user.YouActivity
 * JD-Core Version:    0.7.0.1
 */