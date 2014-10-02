package com.viber.voip.gallery.preview;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

class DoodleBaseActivity$SavedState
  implements Parcelable
{
  public static final Parcelable.Creator<SavedState> CREATOR = new m();
  int a;
  int b;
  int c;
  j d;
  int e;
  
  public DoodleBaseActivity$SavedState() {}
  
  DoodleBaseActivity$SavedState(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readInt();
    this.c = paramParcel.readInt();
    this.e = paramParcel.readInt();
    int i = paramParcel.readInt();
    if (i != -1) {
      this.d = j.values()[i];
    }
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
    paramParcel.writeInt(this.e);
    if (this.d != null) {}
    for (int i = this.d.ordinal();; i = -1)
    {
      paramParcel.writeInt(i);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.gallery.preview.DoodleBaseActivity.SavedState
 * JD-Core Version:    0.7.0.1
 */