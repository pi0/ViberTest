package com.slidingmenu.lib;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

public class SlidingMenu$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new q();
  private final int a;
  
  private SlidingMenu$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readInt();
  }
  
  public SlidingMenu$SavedState(Parcelable paramParcelable, int paramInt)
  {
    super(paramParcelable);
    this.a = paramInt;
  }
  
  public int a()
  {
    return this.a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.slidingmenu.lib.SlidingMenu.SavedState
 * JD-Core Version:    0.7.0.1
 */