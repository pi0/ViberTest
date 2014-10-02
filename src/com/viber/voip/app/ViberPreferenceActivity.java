package com.viber.voip.app;

import com.actionbarsherlock.app.SherlockPreferenceActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;

public class ViberPreferenceActivity
  extends SherlockPreferenceActivity
{
  public void onAnalyticsPageViewChanged() {}
  
  protected void onPause()
  {
    super.onPause();
    ViberApplication.getInstance().notifyActivityOnForeground(false, getClass().getSimpleName());
  }
  
  protected void onResume()
  {
    super.onResume();
    ViberApplication.getInstance().notifyActivityOnForeground(true, getClass().getSimpleName());
  }
  
  protected void onStart()
  {
    super.onStart();
    bc.a().a(this);
  }
  
  protected void onStop()
  {
    super.onStop();
    bc.a().b(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.app.ViberPreferenceActivity
 * JD-Core Version:    0.7.0.1
 */