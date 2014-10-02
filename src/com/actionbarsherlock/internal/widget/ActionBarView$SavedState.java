package com.actionbarsherlock.internal.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class ActionBarView$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new ActionBarView.SavedState.1();
  int expandedMenuItemId;
  boolean isOverflowOpen;
  
  private ActionBarView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.expandedMenuItemId = paramParcel.readInt();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.isOverflowOpen = bool;
      return;
    }
  }
  
  ActionBarView$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.expandedMenuItemId);
    if (this.isOverflowOpen) {}
    for (int i = 1;; i = 0)
    {
      paramParcel.writeInt(i);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarView.SavedState
 * JD-Core Version:    0.7.0.1
 */