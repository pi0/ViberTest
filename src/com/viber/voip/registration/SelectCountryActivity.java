package com.viber.voip.registration;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.widget.SearchView;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.r;
import com.viber.voip.app.ViberListActivity;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.util.gl;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class SelectCountryActivity
  extends ViberListActivity
{
  private static final String a = SelectCountryActivity.class.getSimpleName();
  private String b;
  private List<CountryCode> c = new ArrayList();
  private Runnable d = new da(this);
  
  public static List<CountryCode> a()
  {
    ArrayList localArrayList = new ArrayList(250);
    ar localar = ViberApplication.getInstance().getCountryCodeManager();
    try
    {
      localArrayList.addAll(localar.a());
      return localArrayList;
    }
    catch (IOException localIOException)
    {
      ViberApplication.log(6, a, localIOException.getMessage(), localIOException);
    }
    return localArrayList;
  }
  
  private void b()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getSystemService("input_method");
    if ((localInputMethodManager != null) && (getCurrentFocus() != null) && (getCurrentFocus().getWindowToken() != null)) {
      localInputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903324);
    bc.a().a(a.c.a());
    if (ViberApplication.isTablet()) {
      gl.a(this);
    }
    getSupportActionBar().setHomeButtonEnabled(true);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setIcon(2130837608);
    getSupportActionBar().setTitle("");
    dc.a(dk.h).postAtFrontOfQueue(new cu(this));
    getListView().setOnTouchListener(new cw(this));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131755010, paramMenu);
    MenuItem localMenuItem = paramMenu.findItem(2131166267);
    localMenuItem.expandActionView();
    SearchView localSearchView = (SearchView)localMenuItem.getActionView();
    localSearchView.setIconified(false);
    localSearchView.clearFocus();
    localSearchView.setQueryHint(getResources().getString(2131493622));
    localSearchView.setQueryHintColor(getResources().getColor(2131296462));
    localSearchView.setPadding(0, 0, 0, 0);
    localSearchView.setOnQueryTextListener(new cx(this));
    localSearchView.setOnCloseListener(new cy(this));
    localMenuItem.setOnActionExpandListener(new cz(this));
    View localView = localSearchView.findViewById(2131165523);
    if (localView != null) {
      localView.setBackgroundResource(2130837781);
    }
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    dd localdd = (dd)paramView.getTag();
    if ((localdd != null) && (localdd.a() != null))
    {
      bc.a().a(a.c.b(dd.a(localdd).c()));
      Intent localIntent = new Intent(this, RegistrationActivity.class);
      localIntent.putExtra("extra_selected_code", localdd.a());
      setResult(-1, localIntent);
      finish();
    }
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
  
  protected void onStart()
  {
    super.onStart();
  }
  
  protected void onStop()
  {
    super.onStop();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.SelectCountryActivity
 * JD-Core Version:    0.7.0.1
 */