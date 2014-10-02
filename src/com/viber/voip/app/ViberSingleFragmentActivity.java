package com.viber.voip.app;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NavUtils;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;

public abstract class ViberSingleFragmentActivity
  extends ViberFragmentActivity
{
  protected Fragment a;
  
  protected abstract Fragment b();
  
  public Fragment c()
  {
    return this.a;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903054);
    getSupportActionBar().setHomeButtonEnabled(true);
    if (getIntent().hasExtra("android.intent.extra.TITLE")) {
      setTitle(getIntent().getStringExtra("android.intent.extra.TITLE"));
    }
    Object localObject = getIntent().getStringExtra("android.intent.extra.TITLE");
    if (localObject != null) {}
    for (;;)
    {
      setTitle((CharSequence)localObject);
      if (paramBundle != null) {
        break;
      }
      this.a = b();
      this.a.setArguments(intentToFragmentArguments(getIntent()));
      getSupportFragmentManager().beginTransaction().add(2131165332, this.a, "single_pane").commit();
      return;
      localObject = getTitle();
    }
    this.a = getSupportFragmentManager().findFragmentByTag("single_pane");
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    NavUtils.navigateUpFromSameTask(this);
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.app.ViberSingleFragmentActivity
 * JD-Core Version:    0.7.0.1
 */