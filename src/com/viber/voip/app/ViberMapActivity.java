package com.viber.voip.app;

import com.google.android.maps.MapActivity;
import com.viber.voip.ViberApplication;

public class ViberMapActivity
  extends MapActivity
{
  protected boolean isRouteDisplayed()
  {
    return false;
  }
  
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
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.app.ViberMapActivity
 * JD-Core Version:    0.7.0.1
 */