package it.sephiroth.android.library.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;
import java.util.ArrayList;

class ExpandableHListView$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new an();
  ArrayList<ExpandableHListConnector.GroupMetadata> a;
  
  private ExpandableHListView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = new ArrayList();
    paramParcel.readList(this.a, ExpandableHListConnector.class.getClassLoader());
  }
  
  ExpandableHListView$SavedState(Parcelable paramParcelable, ArrayList<ExpandableHListConnector.GroupMetadata> paramArrayList)
  {
    super(paramParcelable);
    this.a = paramArrayList;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeList(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.ExpandableHListView.SavedState
 * JD-Core Version:    0.7.0.1
 */