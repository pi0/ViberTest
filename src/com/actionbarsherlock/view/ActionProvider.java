package com.actionbarsherlock.view;

import android.content.Context;
import android.view.View;

public abstract class ActionProvider
{
  private ActionProvider.SubUiVisibilityListener mSubUiVisibilityListener;
  
  public ActionProvider(Context paramContext) {}
  
  public boolean hasSubMenu()
  {
    return false;
  }
  
  public abstract View onCreateActionView();
  
  public boolean onPerformDefaultAction()
  {
    return false;
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu) {}
  
  public void setSubUiVisibilityListener(ActionProvider.SubUiVisibilityListener paramSubUiVisibilityListener)
  {
    this.mSubUiVisibilityListener = paramSubUiVisibilityListener;
  }
  
  public void subUiVisibilityChanged(boolean paramBoolean)
  {
    if (this.mSubUiVisibilityListener != null) {
      this.mSubUiVisibilityListener.onSubUiVisibilityChanged(paramBoolean);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.view.ActionProvider
 * JD-Core Version:    0.7.0.1
 */