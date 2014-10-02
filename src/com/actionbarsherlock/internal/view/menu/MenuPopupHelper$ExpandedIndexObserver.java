package com.actionbarsherlock.internal.view.menu;

import android.database.DataSetObserver;

class MenuPopupHelper$ExpandedIndexObserver
  extends DataSetObserver
{
  private MenuPopupHelper$ExpandedIndexObserver(MenuPopupHelper paramMenuPopupHelper) {}
  
  public void onChanged()
  {
    MenuPopupHelper.access$500(this.this$0).findExpandedIndex();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuPopupHelper.ExpandedIndexObserver
 * JD-Core Version:    0.7.0.1
 */