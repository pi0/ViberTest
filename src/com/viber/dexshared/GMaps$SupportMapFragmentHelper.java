package com.viber.dexshared;

import android.support.v4.app.Fragment;

public abstract interface GMaps$SupportMapFragmentHelper
{
  public abstract Fragment getFragment();
  
  public abstract GMaps.SupportMapFragmentHelper.FragmentDelegate getFragmentSuper();
  
  public abstract GMaps.GoogleMap getMap();
  
  public abstract void init(GMaps.SupportMapFragmentHelper.FragmentDelegate paramFragmentDelegate);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.dexshared.GMaps.SupportMapFragmentHelper
 * JD-Core Version:    0.7.0.1
 */