package com.viber.voip.user;

import android.os.Bundle;
import android.view.View;
import android.view.Window;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.gl;

public class YouDialogActivity
  extends YouActivity
{
  protected boolean isActionBarWithShadow()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    if (ViberApplication.isTablet()) {
      gl.a(this, true);
    }
    super.onCreate(paramBundle);
    getWindow().findViewById(16908290).setBackgroundResource(2130837701);
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
 * Qualified Name:     com.viber.voip.user.YouDialogActivity
 * JD-Core Version:    0.7.0.1
 */