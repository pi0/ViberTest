package com.slidingmenu.lib;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class q
  implements Parcelable.Creator<SlidingMenu.SavedState>
{
  public SlidingMenu.SavedState a(Parcel paramParcel)
  {
    return new SlidingMenu.SavedState(paramParcel, null);
  }
  
  public SlidingMenu.SavedState[] a(int paramInt)
  {
    return new SlidingMenu.SavedState[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.slidingmenu.lib.q
 * JD-Core Version:    0.7.0.1
 */