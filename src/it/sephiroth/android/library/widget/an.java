package it.sephiroth.android.library.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class an
  implements Parcelable.Creator<ExpandableHListView.SavedState>
{
  public ExpandableHListView.SavedState a(Parcel paramParcel)
  {
    return new ExpandableHListView.SavedState(paramParcel, null);
  }
  
  public ExpandableHListView.SavedState[] a(int paramInt)
  {
    return new ExpandableHListView.SavedState[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     it.sephiroth.android.library.widget.an
 * JD-Core Version:    0.7.0.1
 */