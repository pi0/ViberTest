package it.sephiroth.android.library.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

class ExpandableHListConnector$GroupMetadata
  implements Parcelable, Comparable<GroupMetadata>
{
  public static final Parcelable.Creator<GroupMetadata> CREATOR = new ad();
  int a;
  int b;
  int c;
  long d;
  
  static GroupMetadata a(int paramInt1, int paramInt2, int paramInt3, long paramLong)
  {
    GroupMetadata localGroupMetadata = new GroupMetadata();
    localGroupMetadata.a = paramInt1;
    localGroupMetadata.b = paramInt2;
    localGroupMetadata.c = paramInt3;
    localGroupMetadata.d = paramLong;
    return localGroupMetadata;
  }
  
  public int a(GroupMetadata paramGroupMetadata)
  {
    if (paramGroupMetadata == null) {
      throw new IllegalArgumentException();
    }
    return this.c - paramGroupMetadata.c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeInt(this.c);
    paramParcel.writeLong(this.d);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     it.sephiroth.android.library.widget.ExpandableHListConnector.GroupMetadata
 * JD-Core Version:    0.7.0.1
 */