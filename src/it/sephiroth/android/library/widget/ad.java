package it.sephiroth.android.library.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ad
  implements Parcelable.Creator<ExpandableHListConnector.GroupMetadata>
{
  public ExpandableHListConnector.GroupMetadata a(Parcel paramParcel)
  {
    return ExpandableHListConnector.GroupMetadata.a(paramParcel.readInt(), paramParcel.readInt(), paramParcel.readInt(), paramParcel.readLong());
  }
  
  public ExpandableHListConnector.GroupMetadata[] a(int paramInt)
  {
    return new ExpandableHListConnector.GroupMetadata[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.ad
 * JD-Core Version:    0.7.0.1
 */