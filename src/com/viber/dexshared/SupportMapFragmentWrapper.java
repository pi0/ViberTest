package com.viber.dexshared;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class SupportMapFragmentWrapper
  implements GMaps.SupportMapFragmentHelper.FragmentDelegate
{
  private GMaps.SupportMapFragmentHelper.FragmentDelegate mFragmentSuper;
  private GMaps.SupportMapFragmentHelper mHelper;
  
  public SupportMapFragmentWrapper(GMaps.SupportMapFragmentHelper paramSupportMapFragmentHelper)
  {
    this.mHelper = paramSupportMapFragmentHelper;
    this.mHelper.init(this);
    this.mFragmentSuper = paramSupportMapFragmentHelper.getFragmentSuper();
  }
  
  public Fragment getFragment()
  {
    return this.mHelper.getFragment();
  }
  
  public GMaps.GoogleMap getMap()
  {
    return this.mHelper.getMap();
  }
  
  public View getView()
  {
    return this.mFragmentSuper.getView();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    this.mFragmentSuper.onActivityCreated(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return this.mFragmentSuper.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.dexshared.SupportMapFragmentWrapper
 * JD-Core Version:    0.7.0.1
 */