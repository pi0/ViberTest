package com.viber.jni;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class LocationInfo$1
  implements Parcelable.Creator<LocationInfo>
{
  public LocationInfo createFromParcel(Parcel paramParcel)
  {
    return new LocationInfo(paramParcel);
  }
  
  public LocationInfo[] newArray(int paramInt)
  {
    return new LocationInfo[paramInt];
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.LocationInfo.1
 * JD-Core Version:    0.7.0.1
 */