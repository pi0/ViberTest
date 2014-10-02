package com.actionbarsherlock.internal.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

class ActionMenuPresenter$SavedState
  implements Parcelable
{
  public static final Parcelable.Creator<SavedState> CREATOR = new ActionMenuPresenter.SavedState.1();
  public int openSubMenuId;
  
  ActionMenuPresenter$SavedState() {}
  
  ActionMenuPresenter$SavedState(Parcel paramParcel)
  {
    this.openSubMenuId = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.openSubMenuId);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ActionMenuPresenter.SavedState
 * JD-Core Version:    0.7.0.1
 */