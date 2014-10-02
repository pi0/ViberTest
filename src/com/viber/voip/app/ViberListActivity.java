package com.viber.voip.app;

import com.actionbarsherlock.app.SherlockListActivity;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.bc;
import com.viber.voip.util.gl;

public class ViberListActivity
  extends SherlockListActivity
{
  private boolean a;
  
  protected void onDestroy()
  {
    super.onDestroy();
    gl.a(getWindow());
  }
  
  protected void onPause()
  {
    this.a = true;
    super.onPause();
    ViberApplication.getInstance().notifyActivityOnForeground(false, getClass().getSimpleName());
  }
  
  protected void onResume()
  {
    this.a = false;
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
 * Qualified Name:     com.viber.voip.app.ViberListActivity
 * JD-Core Version:    0.7.0.1
 */