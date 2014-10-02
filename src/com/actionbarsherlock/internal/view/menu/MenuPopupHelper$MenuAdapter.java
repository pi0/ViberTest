package com.actionbarsherlock.internal.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

class MenuPopupHelper$MenuAdapter
  extends BaseAdapter
{
  private MenuBuilder mAdapterMenu;
  private int mExpandedIndex = -1;
  
  public MenuPopupHelper$MenuAdapter(MenuPopupHelper paramMenuPopupHelper, MenuBuilder paramMenuBuilder)
  {
    this.mAdapterMenu = paramMenuBuilder;
    registerDataSetObserver(new MenuPopupHelper.ExpandedIndexObserver(paramMenuPopupHelper, null));
    findExpandedIndex();
  }
  
  void findExpandedIndex()
  {
    MenuItemImpl localMenuItemImpl = MenuPopupHelper.access$400(this.this$0).getExpandedItem();
    if (localMenuItemImpl != null)
    {
      ArrayList localArrayList = MenuPopupHelper.access$400(this.this$0).getNonActionItems();
      int i = localArrayList.size();
      for (int j = 0; j < i; j++) {
        if ((MenuItemImpl)localArrayList.get(j) == localMenuItemImpl)
        {
          this.mExpandedIndex = j;
          return;
        }
      }
    }
    this.mExpandedIndex = -1;
  }
  
  public int getCount()
  {
    if (MenuPopupHelper.access$200(this.this$0)) {}
    for (ArrayList localArrayList = this.mAdapterMenu.getNonActionItems(); this.mExpandedIndex < 0; localArrayList = this.mAdapterMenu.getVisibleItems()) {
      return localArrayList.size();
    }
    return -1 + localArrayList.size();
  }
  
  public MenuItemImpl getItem(int paramInt)
  {
    if (MenuPopupHelper.access$200(this.this$0)) {}
    for (ArrayList localArrayList = this.mAdapterMenu.getNonActionItems();; localArrayList = this.mAdapterMenu.getVisibleItems())
    {
      if ((this.mExpandedIndex >= 0) && (paramInt >= this.mExpandedIndex)) {
        paramInt++;
      }
      return (MenuItemImpl)localArrayList.get(paramInt);
    }
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {}
    for (View localView = MenuPopupHelper.access$300(this.this$0).inflate(MenuPopupHelper.ITEM_LAYOUT, paramViewGroup, false);; localView = paramView)
    {
      MenuView.ItemView localItemView = (MenuView.ItemView)localView;
      if (this.this$0.mForceShowIcon) {
        ((ListMenuItemView)localView).setForceShowIcon(true);
      }
      localItemView.initialize(getItem(paramInt), 0);
      return localView;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuPopupHelper.MenuAdapter
 * JD-Core Version:    0.7.0.1
 */