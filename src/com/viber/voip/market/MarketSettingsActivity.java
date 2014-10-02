package com.viber.voip.market;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.app.ViberSingleFragmentActivity;

public class MarketSettingsActivity
  extends ViberSingleFragmentActivity
{
  protected Fragment b()
  {
    return new ae();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ActionBar localActionBar = getSupportActionBar();
    localActionBar.setDisplayHomeAsUpEnabled(true);
    localActionBar.setDisplayShowHomeEnabled(false);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    finish();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.market.MarketSettingsActivity
 * JD-Core Version:    0.7.0.1
 */