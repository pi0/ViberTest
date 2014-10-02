package com.viber.voip.contacts.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;

public class by
  extends ContactsFragment
{
  public void b(boolean paramBoolean)
  {
    super.b(paramBoolean);
  }
  
  protected boolean l()
  {
    return false;
  }
  
  protected boolean m()
  {
    return false;
  }
  
  protected boolean n()
  {
    return false;
  }
  
  protected boolean o()
  {
    return false;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    this.g = 1;
    super.onActivityCreated(paramBundle);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenu.removeItem(2131166268);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (localView.findViewById(2131165662) != null) {
      localView.findViewById(2131165662).setVisibility(8);
    }
    return localView;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.ui.by
 * JD-Core Version:    0.7.0.1
 */