package com.actionbarsherlock.internal.view.menu;

import com.actionbarsherlock.view.MenuItem;

class ActionMenuPresenter$PopupPresenterCallback
  implements MenuPresenter.Callback
{
  private ActionMenuPresenter$PopupPresenterCallback(ActionMenuPresenter paramActionMenuPresenter) {}
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if ((paramMenuBuilder instanceof SubMenuBuilder)) {
      ((SubMenuBuilder)paramMenuBuilder).getRootMenu().close(false);
    }
  }
  
  public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder)
  {
    if (paramMenuBuilder == null) {
      return false;
    }
    this.this$0.mOpenSubMenuId = ((SubMenuBuilder)paramMenuBuilder).getItem().getItemId();
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ActionMenuPresenter.PopupPresenterCallback
 * JD-Core Version:    0.7.0.1
 */