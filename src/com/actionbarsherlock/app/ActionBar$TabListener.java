package com.actionbarsherlock.app;

import android.support.v4.app.FragmentTransaction;

public abstract interface ActionBar$TabListener
{
  public abstract void onTabReselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction);
  
  public abstract void onTabSelected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction);
  
  public abstract void onTabUnselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.app.ActionBar.TabListener
 * JD-Core Version:    0.7.0.1
 */