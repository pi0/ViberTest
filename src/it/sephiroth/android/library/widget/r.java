package it.sephiroth.android.library.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class r
  implements Parcelable.Creator<AbsHListView.SavedState>
{
  public AbsHListView.SavedState a(Parcel paramParcel)
  {
    return new AbsHListView.SavedState(paramParcel, null);
  }
  
  public AbsHListView.SavedState[] a(int paramInt)
  {
    return new AbsHListView.SavedState[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.r
 * JD-Core Version:    0.7.0.1
 */